#import "JSONable.h"
@import Foundation;

@interface Partner : NSObject <JSONAble>

@property (nonatomic, copy, readonly) NSString *partnerID;
@property (nonatomic, copy, readonly) NSString *name;
@property (nonatomic, copy, readonly) NSString *shortName;

@end
