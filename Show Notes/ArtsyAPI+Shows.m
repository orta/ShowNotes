#import "ArtsyAPI+Private.h"
#import "ARRouter.h"
@import CoreLocation;

@implementation ArtsyAPI (Shows)

+ (AFJSONRequestOperation *)getShowInfo:(PartnerShow *)show success:(void (^)(PartnerShow *show))success failure:(void (^)(NSError *error))failure
{
    NSURLRequest *request = [ARRouter newShowInfoRequestWithID:show.showID];
    return [self getRequest:request parseIntoAClass:PartnerShow.class success:success failure:failure];
}

+ (AFJSONRequestOperation *)getNearbyShows:(CLLocation *)location success:(void (^)(NSArray *shows))success failure:(void (^)(NSError *error))failure
{
    NSURLRequest *request = [ARRouter newRunningShowsListingRequestForLongitude:location.coordinate.longitude latitude:location.coordinate.latitude];
    return [self getRequest:request parseIntoAnArrayOfClass:PartnerShow.class success:success failure:failure];
}

+ (AFJSONRequestOperation *)getArtworksForShow:(PartnerShow *)show atPage:(NSInteger)page success:(void (^)(NSArray *artworks))success failure:(void (^)(NSError *error))failure
{
    NSURLRequest *request = [ARRouter newArtworksFromShowRequest:show atPage:page];
    return [self getRequest:request parseIntoAnArrayOfClass:Artwork.class success:success failure:failure];
}

+ (AFJSONRequestOperation *)getImagesForShow:(PartnerShow *)show atPage:(NSInteger)page success:(void (^)(NSArray *images))success failure:(void (^)(NSError *error))failure
{
    NSURLRequest *request = [ARRouter newImagesFromShowRequest:show atPage:page];
    return [self getRequest:request parseIntoAnArrayOfClass:Image.class success:success failure:failure];
}

@end
