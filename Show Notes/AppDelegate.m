#import "ARRouter.h"
#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    [ARRouter setupWithBaseApiURL:[ARRouter baseApiURL]];

    return YES;
}

@end
