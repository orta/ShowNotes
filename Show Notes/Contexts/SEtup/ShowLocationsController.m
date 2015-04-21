#import "ShowLocationsController.h"
@import MapKit;
#import "ArtsyAPI.h"
@import INTULocationManager;

@interface ShowLocationsController()
@property (readonly, nonatomic, strong) CLLocationManager *locationManager;
@property (nonatomic, readonly, assign) BOOL gotLocation;
@end


@implementation ShowLocationsController

- (instancetype)init
{
    self = [super init];

    _locationManager = [[CLLocationManager alloc] init];

    return self;
}

- (BOOL)hasLocationAccess
{
    CLAuthorizationStatus status = [CLLocationManager authorizationStatus];
    return status != kCLAuthorizationStatusNotDetermined;
}

- (void)checkForLocationAccess
{
    CLAuthorizationStatus status = [CLLocationManager authorizationStatus];
    [self locationManager:self.locationManager didChangeAuthorizationStatus:status];
}

- (void)requestAccess
{
    [self.locationManager requestWhenInUseAuthorization];
}

- (void)locationManager:(CLLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status
{
    [self willChangeValueForKey:@"hasLocationAccess"];
    [self didChangeValueForKey:@"hasLocationAccess"];
    manager.distanceFilter = kCLDistanceFilterNone;
    manager.desiredAccuracy = kCLLocationAccuracyHundredMeters;

    [manager startUpdatingLocation];
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    if (locations.count == 0) return;
    [manager stopUpdatingLocation];

    if (self.gotLocation) return;
    _gotLocation = YES;
}


@end
