#import "Artwork.h"

@import KZPropertyMapper;

@implementation Artwork

- (instancetype)initWithJSON:(NSDictionary *)JSONdictionary error:(NSError *)error
{
    self = [super init];
    if (!self) return self;

    [KZPropertyMapper mapValuesFrom:JSONdictionary toInstance:self usingMapping:@{
        @"id" : KZProperty(artworkID),
        @"title" : KZProperty(title),
        @"medium" : KZProperty(medium),
    }];

    return self;
}

@end
