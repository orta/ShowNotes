#import "ArtsyAPI.h"
#import "Models.h"
@class CLLocation;

@interface ArtsyAPI (Shows)

+ (AFJSONRequestOperation *)getShowInfo:(PartnerShow *)show success:(void (^)(PartnerShow *show))success failure:(void (^)(NSError *error))failure;

+ (AFJSONRequestOperation *)getNearbyShows:(CLLocation *)location success:(void (^)(NSArray *shows))success failure:(void (^)(NSError *error))failure;

+ (AFJSONRequestOperation *)getArtworksForShow:(PartnerShow *)show atPage:(NSInteger)page success:(void (^)(NSArray *artworks))success failure:(void (^)(NSError *error))failure;

+ (AFJSONRequestOperation *)getImagesForShow:(PartnerShow *)show atPage:(NSInteger)page success:(void (^)(NSArray *images))success failure:(void (^)(NSError *error))failure;

@end
