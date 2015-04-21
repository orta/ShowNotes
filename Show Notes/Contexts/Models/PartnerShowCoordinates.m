#import "PartnerShowCoordinates.h"
@import KZPropertyMapper;

@implementation KZPropertyMapper (ParnerShowCoordinates)

+ (id)boxValueAsPartnerShowCoordinates:(id)value
{
    return [[PartnerShowCoordinates alloc] initWithJSON:value error:nil];
}

@end

@implementation PartnerShowCoordinates

- (instancetype)initWithJSON:(NSDictionary *)JSONdictionary error:(NSError *)error
{
    self = [super init];
    if (!self) return self;

    [KZPropertyMapper mapValuesFrom:JSONdictionary toInstance:self usingMapping:@{
        @"lng" : KZProperty(longitude),
        @"lat" : KZProperty(latitude)
    }];

    return self;
}

- (CLLocationCoordinate2D)coordinate
{
    return CLLocationCoordinate2DMake(self.longitude, self.latitude);
}

@end
