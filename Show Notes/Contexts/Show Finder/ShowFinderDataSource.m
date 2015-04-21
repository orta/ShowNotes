#import "ShowFinderDataSource.h"
@import INTULocationManager;
#import "ArtsyAPI+Shows.h"

@interface ShowFinderDataSource()
@property (nonatomic, strong, readwrite) INTULocationManager *locationManager;
@property (nonatomic, strong, readwrite) NSArray *shows;
@end

@implementation ShowFinderDataSource

- (instancetype)init
{
    self = [super init];
    if (!self)return nil;

    _locationManager = [[INTULocationManager alloc] init];

    return self;
}

- (void)start
{
    [self.locationManager requestLocationWithDesiredAccuracy:INTULocationAccuracyBlock timeout:15 block:^(CLLocation *currentLocation, INTULocationAccuracy achievedAccuracy, INTULocationStatus status) {
        [self getShowsForLocation:currentLocation];
    }];
}

- (void)getShowsForLocation:(CLLocation *)location
{
    [ArtsyAPI getNearbyShows:location success:^(NSArray *shows) {
        self.shows = shows;
    } failure:^(NSError *error) {
        NSLog(@"Booooo it failed");
    }];

}

@end
