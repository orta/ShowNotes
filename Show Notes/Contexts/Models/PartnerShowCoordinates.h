#import "JSONable.h"
@import Foundation;
@import MapKit;

@interface PartnerShowCoordinates : NSObject <JSONAble>

@property (nonatomic, assign, readonly) CGFloat latitude;
@property (nonatomic, assign, readonly) CGFloat longitude;

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

@end
