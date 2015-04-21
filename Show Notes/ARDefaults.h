@import  Foundation;

extern NSString *const ARUserIdentifierDefault;
extern NSString *const ARUseStagingDefault;

extern NSString *const AROAuthTokenDefault;
extern NSString *const AROAuthTokenExpiryDateDefault;

extern NSString *const ARXAppTokenDefault;
extern NSString *const ARXAppTokenExpiryDateDefault;

@interface ARDefaults : NSObject
+ (void)setup;
+ (void)resetDefaults;
@end
