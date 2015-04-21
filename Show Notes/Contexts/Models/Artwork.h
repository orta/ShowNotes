#import "JSONable.h"
@import Foundation;
@import CoreGraphics;

@interface Artwork : NSObject <JSONAble>

@property (nonatomic, copy, readonly) NSString *artworkID;
@property (nonatomic, copy, readonly) NSString *title;
@property (nonatomic, copy, readonly) NSString *medium;
@end
