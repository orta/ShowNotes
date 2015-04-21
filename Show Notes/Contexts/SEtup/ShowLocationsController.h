@import UIKit;

@interface ShowLocationsController : NSObject

- (BOOL)hasLocationAccess;
- (void)checkForLocationAccess;
- (void)requestAccess;

@end
