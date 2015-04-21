#import "PartnerShowLocation.h"
#import "PartnerShowCoordinates.h"
@import KZPropertyMapper;


@implementation KZPropertyMapper (PartnerShowLocation)

+ (id)boxValueAsPartnerShowLocation:(id)value
{
    return [[PartnerShowLocation alloc] initWithJSON:value error:nil];
}

@end


@implementation PartnerShowLocation

- (instancetype)initWithJSON:(NSDictionary *)JSONdictionary error:(NSError *)error
{
    self = [super init];
    if (!self) return self;

    [KZPropertyMapper mapValuesFrom:JSONdictionary toInstance:self usingMapping:@{
        @"coordinates" : KZBox(PartnerShowCoordinates, coordinates)
    }];

    return self;
}

- (MKPointAnnotation *)annotation
{
    MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
    point.coordinate = self.coordinates.coordinate;
    return point;
}

@end
