#import "ShowViewController.h"
#import "Models.h"
#import "MKMapKit+Sugar.h"
#import "ArtworkCollectionViewCell.h"
#import "UIImageView+Networking.h"
#import "ARRouter.h"
#import "ShowNotesViewController.h"

@import KVOController;
@import SSDataSources;

@interface ShowViewController () <UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *subtitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *subSubtitleLabel;
@property (strong, nonatomic, readwrite) IBOutlet SSArrayDataSource *showArtworksDataSource;

@end

@implementation ShowViewController

- (void)awakeFromNib
{
    self.showArtworksDataSource.cellClass = ArtworkCollectionViewCell.class;
    self.showArtworksDataSource.cellConfigureBlock = ^(ArtworkCollectionViewCell *cell,
                                                       Artwork *artwork,
                                                       UITableView *tableView,
                                                       NSIndexPath *indexPath) {
        
        NSURLRequest *request = [ARRouter directImageRequestForModel:Artwork.class andSlug:artwork.artworkID];
        [cell.artworkPreviewImageView ar_setImageWithURLRequest:request];

        cell.artworkTitleLabel.text = artwork.title;
    };
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self.KVOController observe:self keyPath:@"self.show" options: NSKeyValueObservingOptionInitial|NSKeyValueObservingOptionNew block:^(id observer, id object, NSDictionary *change) {
        
        self.titleLabel.text = self.show.name;
        self.subtitleLabel.text = self.show.partner.name;

        CLLocationCoordinate2D coords = self.show.location.coordinates.coordinate;
        [self.mapView centerAroundLocation:coords animated:YES];
        [self.mapView replaceAnnotationsWithNewAnnotations:@[self.show.location.annotation] animated:YES];
    }];


    [self.KVOController observe:self keyPath:@"self.show.artworks" options: NSKeyValueObservingOptionInitial|NSKeyValueObservingOptionNew block:^(id observer, id object, NSDictionary *change) {
        NSArray *artworks = self.show.artworks;
        [self.showArtworksDataSource updateItems:artworks];
    }];

    [self.show getShowArtworks];
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    Artwork *artwork = [self.showArtworksDataSource itemAtIndexPath:indexPath];
    [self performSegueWithIdentifier:@"GoToArtwork" sender:artwork];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ShowNotesViewController *notesVC = segue.destinationViewController;
    notesVC.artwork = sender;
}

@end
