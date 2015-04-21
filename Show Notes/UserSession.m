#import "ARRouter.h"
#import "UserSession.h"
@import Keys.ShowNotesKeys;
@import Artsy_Authentication;

@interface UserSession()
@property (nonatomic, strong, readonly) ArtsyAuthentication *auth;
@property (nonatomic, strong, readwrite) NSString *xappToken;
@end

@implementation UserSession

- (instancetype)init
{
   self = [super init];
    if (!self)return nil;

    ShowNotesKeys *keys = [[ShowNotesKeys alloc] init];
    _auth = [[ArtsyAuthentication alloc] initWithClientID:keys.artsyAPIClientKey clientSecret:keys.artsyAPIClientSecret];
    return self;
}


- (void)getTemporaryToken
{
    [self.auth getWeekLongXAppTrialToken:^(ArtsyToken *token, NSError *error) {
        if (error) {
            NSLog(@"AUTH ERROR: %@", error);
            return;
        }
        [self setValue:@YES forKey:@"hasTemporaryToken"];
        [self setXappToken:token.token];
        [ARRouter setXappToken:token.token];
    }];
}

@end
