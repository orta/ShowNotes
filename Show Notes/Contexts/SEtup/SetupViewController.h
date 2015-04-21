@import UIKit;
@class UserSession, ShowLocationsController;

@interface SetupViewController : UIViewController

@property (nonatomic, strong, readonly) UserSession *session;
@property (weak, nonatomic) IBOutlet ShowLocationsController *locationController;
@end
