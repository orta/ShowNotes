#import <Foundation/Foundation.h>

@interface UserSession : NSObject

@property (nonatomic, strong, readonly) NSString *xappToken;
@property (nonatomic, assign, readonly) BOOL hasTemporaryToken;

- (void)getTemporaryToken;

@end
