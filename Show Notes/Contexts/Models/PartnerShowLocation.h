#import "JSONable.h"
@import Foundation;

@class PartnerShowCoordinates, MKPointAnnotation;

@interface PartnerShowLocation : NSObject <JSONAble>

@property (nonatomic, strong, readonly) PartnerShowCoordinates *coordinates;
- (MKPointAnnotation *)annotation;

@end
