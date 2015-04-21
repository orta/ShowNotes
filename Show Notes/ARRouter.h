#import "Models.h"
@class AFHTTPClient;
@import CoreGraphics;

@interface ARRouter : NSObject

+ (void)setup;
+ (NSSet *)artsyHosts;
+ (NSURL *)baseApiURL;
+ (NSURL *)baseWebURL;

+ (AFHTTPClient *)httpClient;
+ (void)setupWithBaseApiURL:(NSURL *)baseApiURL;

+ (void)setupUserAgent;
+ (BOOL)isWebURL:(NSURL *)url;
+ (BOOL)isPad:(BOOL)isPad;

+ (BOOL)isInternalURL:(NSURL *)url;

+ (NSURLRequest *)requestForURL:(NSURL *)url;

#pragma mark - OAuth

+ (void)setAuthToken:(NSString *)token;
+ (NSURLRequest *)newOAuthRequestWithUsername:(NSString *)username password:(NSString *)password;
+ (NSURLRequest *)newTwitterOAuthRequestWithToken:(NSString *)token andSecret:(NSString *)secret;
+ (NSURLRequest *)newFacebookOAuthRequestWithToken:(NSString *)token;

#pragma mark - XApp
+ (void)setXappToken:(NSString *)token;
+ (NSURLRequest *)newXAppTokenRequest;

#pragma mark - User creation

+ (NSURLRequest *)newCreateUserRequestWithName:(NSString *)name email:(NSString *)email password:(NSString *)password;
+ (NSURLRequest *)newCreateUserViaFacebookRequestWithToken:(NSString *)token email:(NSString *)email name:(NSString *)name;
+ (NSURLRequest *)newCreateUserViaTwitterRequestWithToken:(NSString *)token secret:(NSString *)secret email:(NSString *)email name:(NSString *)name;

#pragma mark - User

+ (NSURLRequest *)newUserInfoRequest;
+ (NSURLRequest *)newUserEditRequestWithParams:(NSDictionary *)params;
+ (NSURLRequest *)newCheckFollowingProfileHeadRequest:(NSString *)profileID;
+ (NSURLRequest *)newMyFollowProfileRequest:(NSString *)profileID;
+ (NSURLRequest *)newMyUnfollowProfileRequest:(NSString *)profileID;

#pragma mark - Artworks

+ (NSURLRequest *)newArtworkInfoRequestForArtworkID:(NSString *)artworkID;
+ (NSURLRequest *)newArtworksRelatedToArtworkRequest:(Artwork *)artwork;
+ (NSURLRequest *)newAdditionalImagesRequestForArtworkWithID:(NSString *)artworkID;
+ (NSURLRequest *)newNewArtworksRequestWithParams:(NSDictionary *)params;
+ (NSURLRequest *)newArtistArtworksRequestWithParams:(NSDictionary *)params andArtistID:(NSString *)artistID;


#pragma mark - Artwork Favorites (items in the saved-artwork collection)

+ (NSURLRequest *)newSetArtworkFavoriteRequestForArtwork:(Artwork *)artwork status:(BOOL)status;
+ (NSURLRequest *)newArtworksFromUsersFavoritesRequestWithID:(NSString *)userID page:(NSInteger)page;
+ (NSURLRequest *)newCheckFavoriteStatusRequestForArtwork:(Artwork *)artwork;
+ (NSURLRequest *)newCheckFavoriteStatusRequestForArtworks:(NSArray *)artworks;
+ (NSURLRequest *)newFairsRequestForArtwork:(Artwork *)artwork;
+ (NSURLRequest *)newShowsRequestForArtworkID:(NSString *)artworkID andFairID:(NSString *)fairID;
+ (NSURLRequest *)newPendingOrderWithArtworkID:(NSString *)artworkID editionSetID:(NSString *)editionSetID;

#pragma mark - Shows

+ (NSURLRequest *)newShowInfoRequestWithID:(NSString *)showID;
+ (NSURLRequest *)newArtworksFromShowRequest:(PartnerShow *)show atPage:(NSInteger)page;
+ (NSURLRequest *)newImagesFromShowRequest:(PartnerShow *)show atPage:(NSInteger)page;
+ (NSURLRequest *)newShowsListingRequest;
+ (NSURLRequest *)newRunningShowsListingRequestForLongitude:(CGFloat)longitude latitude:(CGFloat)latitude;

+ (NSURLRequest *)newArtworkInfoRequestWithID:(NSString *)artworkID;

#pragma mark - Search

+ (NSURLRequest *)newSearchRequestWithQuery:(NSString *)query;
+ (NSURLRequest *)newSearchRequestWithFairID:(NSString *)fairID andQuery:(NSString *)query;
+ (NSURLRequest *)newArtistSearchRequestWithQuery:(NSString *)query;

+ (NSURLRequest *)directImageRequestForModel:(Class)model andSlug:(NSString *)slug;

+ (NSURLRequest *)newSetDeviceAPNTokenRequest:(NSString *)token forDevice:(NSString *)device;
+ (NSURLRequest *)newUptimeURLRequest;
+ (NSURLRequest *)newSystemTimeRequest;

@end
