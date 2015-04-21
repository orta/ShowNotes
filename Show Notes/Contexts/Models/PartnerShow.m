#import "PartnerShow.h"
#import "Partner.h"
#import "PartnerShowLocation.h"
#import "ArtsyAPI.h"

@import KZPropertyMapper;

@interface PartnerShow ()
@property (nonatomic, copy, readwrite) NSArray *artworks;
@end

@implementation PartnerShow

- (instancetype)initWithJSON:(NSDictionary *)JSONdictionary error:(NSError *)error
{
    self = [super init];
    if (!self) return self;

    [KZPropertyMapper mapValuesFrom:JSONdictionary toInstance:self usingMapping:@{
        @"id" : KZProperty(showID),
        @"name" : KZProperty(name),
        @"location": KZBox(PartnerShowLocation, location),
        @"partner": KZBox(Partner, partner)
    }];

    return self;
}

- (void)getShowArtworks
{
    [ArtsyAPI getArtworksForShow:self atPage:1 success:^(NSArray *artworks) {
        self.artworks = artworks;
    } failure:^(NSError *error) {
        self.artworks = nil;
    }];
}

@end
