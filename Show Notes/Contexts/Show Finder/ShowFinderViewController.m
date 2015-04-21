#import "ShowViewController.h"
#import "ShowFinderViewController.h"
#import "ShowFinderDataSource.h"
#import "ShowTableViewModel.h"
#import "Models.h"
#import "MKMapKit+Sugar.h"

@import MapKit;
@import KVOController;
@import MapKit;
@import ObjectiveSugar;

@interface ShowFinderViewController () <UITableViewDelegate, MKMapViewDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (weak, nonatomic) IBOutlet UITableView *showTableView;
@property (nonatomic, strong, readonly) ShowFinderDataSource *dataSource;
@property (nonatomic, strong, readonly) ShowTableViewModel *tableViewDataSource;

@end

@implementation ShowFinderViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    _dataSource = [[ShowFinderDataSource alloc] init];
    _tableViewDataSource = [[ShowTableViewModel alloc] init];

    self.showTableView.dataSource = self.tableViewDataSource;
    self.showTableView.delegate = self;

    [self.mapView setUserTrackingMode:MKUserTrackingModeFollow animated:NO];
    [self.dataSource start];

    [self.KVOController observe:self.dataSource keyPath:@"shows" options:NSKeyValueObservingOptionInitial|NSKeyValueObservingOptionNew block:^(id observer, id object, NSDictionary *change) {
        self.tableViewDataSource.shows = self.dataSource.shows;
        [self.showTableView reloadData];
        [self addMapPins:self.dataSource.shows];
    }];
}

- (void)addMapPins:(NSArray *)shows
{
    [self.mapView replaceAnnotationsWithNewAnnotations:[shows map:^id (PartnerShow *show) {
        return show.location.annotation;
    }] animated:YES];
}

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    if (self.dataSource.shows.count > 0) return;
    [self.mapView centerAroundLocation:userLocation.location.coordinate animated:YES];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    PartnerShow *show = self.dataSource.shows[indexPath.row];
    [self performSegueWithIdentifier:@"GoToShow" sender:show];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ShowViewController *newController = segue.destinationViewController;
    newController.show = sender;

}


@end
