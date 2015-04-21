#import "Partner.h"
#import "PartnerShow.h"
#import "PartnerShowLocation.h"

@import KZPropertyMapper;

@implementation KZPropertyMapper (PartnerShowLocation)

+ (id)boxValueAsPartner:(id)value
{
    return [[Partner alloc] initWithJSON:value error:nil];
}

@end

@implementation Partner

- (instancetype)initWithJSON:(NSDictionary *)JSONdictionary error:(NSError *)error
{
    self = [super init];
    if (!self) return self;

    [KZPropertyMapper mapValuesFrom:JSONdictionary toInstance:self usingMapping:@{
        @"id" : KZProperty(partnerID),
        @"name" : KZProperty(name),
        @"short_name": KZProperty(shortName)
    }];

    return self;
}

@end
