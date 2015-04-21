#import "JSONable.h"
@import Foundation;
@import CoreGraphics;
@class Partner, PartnerShowLocation;

@interface PartnerShow : NSObject <JSONAble>

@property (nonatomic, copy, readonly) NSString *showID;
@property (nonatomic, copy, readonly) NSString *name;

@property (nonatomic, strong, readonly) Partner *partner;
@property (nonatomic, strong, readonly) PartnerShowLocation *location;

@property (nonatomic, copy, readonly) NSArray *artworks;

/// Only gets page one ATM
- (void)getShowArtworks;

@end
