#import "ARNetworkConstants.h"

NSString *const ARBaseDesktopWebURL = @"https://artsy.net/";
NSString *const ARBaseMobileWebURL = @"https://m.artsy.net/";
NSString *const ARBaseApiURL = @"https://api.artsy.net/";

NSString *const ARStagingBaseWebURL = @"http://staging.artsy.net/";
NSString *const ARStagingBaseMobileWebURL = @"http://m-staging.artsy.net/";
NSString *const ARStagingBaseApiURL = @"https://stagingapi.artsy.net/";

NSString *const ARPersonalizePath = @"personalize";

NSString *const ARTwitterCallbackPath = @"artsy://twitter-callback";

NSString *const ARArtsyXCallbackUrlScheme = @"artsy-x-callback-url";
NSString *const ARAuthHeader = @"X-Access-Token";
NSString *const ARXappHeader = @"X-Xapp-Token";
NSString *const ARTotalHeader = @"X-Total-Count";

NSString *const AROAuthURL = @"/oauth2/access_token";
NSString *const ARXappURL = @"/api/v1/xapp_token";

NSString *const ARCreateUserURL = @"/api/v1/user";

NSString *const ARForgotPasswordURL = @"/api/v1/users/send_reset_password_instructions";

NSString *const ARAlbumsURL = @"/api/v1/me/albums";
NSString *const ARAdditionalImagesURLFormat = @"/api/v1/artwork/%@/images";

NSString *const ARMyInfoURL = @"/api/v1/me";
NSString *const ARMyFeedURL = @"/api/v1/me/feed";

NSString *const ARNewArtworksURL = @"/api/v1/artworks/new";
NSString *const ARNewArtworkInfoURLFormat = @"/api/v1/artwork/%@";
NSString *const ARNewRelatedArtworksURLFormat = @"/api/v1/related/layer/%@/%@/artworks";
NSString *const ARArtworkComparablesURLFormat = @"/api/v1/artwork/%@/comparable_sales";
NSString *const ARAddArtworkToFavoritesURLFormat = @"/api/v1/collection/saved-artwork/artwork/%@";
NSString *const ARFavoritesURL = @"/api/v1/collection/saved-artwork/artworks";
NSString *const ARSalesForArtworkURL = @"/api/v1/related/sales";
NSString *const ARMyBiddersURL = @"/api/v1/me/bidders";
NSString *const ARBidderPositionsForSaleAndArtworkURL = @"/api/v1/me/bidder_positions";
NSString *const ARSaleArtworkForSaleAndArtworkURLFormat = @"/api/v1/sale/%@/sale_artwork/%@";
NSString *const ARSaleArtworksURLFormat = @"/api/v1/sale/%@/sale_artworks";
NSString *const ARArtworkFairsURLFormat = @"/api/v1/related/fairs";

NSString *const ARRelatedShowsURL = @"/api/v1/related/shows";

NSString *const ARArtistArtworksURLFormat = @"/api/v1/artist/%@/artworks";
NSString *const ARArtistInformationURLFormat = @"/api/v1/artist/%@";

NSString *const ARRelatedArtistsURL = @"/api/v1/related/artists";
NSString *const ARSampleArtistsURL = @"/api/v1/artists/sample";

NSString *const ARFollowArtistURL = @"/api/v1/me/follow/artist";
NSString *const ARUnfollowArtistURLFormat = @"/api/v1/me/follow/artist/%@";
NSString *const ARFollowArtistsURL = @"/api/v1/me/follow/artists";

NSString *const ARFollowGeneURL = @"/api/v1/me/follow/gene";
NSString *const ARUnfollowGeneURLFormat = @"/api/v1/me/follow/gene/%@";
NSString *const ARFollowGenesURL = @"/api/v1/me/follow/genes";

NSString *const ARFollowProfileURL = @"/api/v1/me/follow/profile";
NSString *const ARFollowingProfileURLFormat = @"/api/v1/me/follow/profile/%@";
NSString *const ARUnfollowProfileURLFormat = @"/api/v1/me/follow/profile/%@";
NSString *const ARFollowProfilesURL = @"/api/v1/me/follow/profiles";

NSString *const ARProfileFeedURLFormat = @"/api/v1/profile/%@/posts";

NSString *const ARGeneInformationURLFormat = @"/api/v1/gene/%@";
NSString *const ARArtworkInformationURLFormat = @"/api/v1/artwork/%@";
NSString *const ARPostInformationURLFormat = @"/api/v1/posts/%@";
NSString *const ARProfileInformationURLFormat = @"/api/v1/profile/%@";

NSString *const ARShowFeedURL = @"/api/v1/shows/feed";
NSString *const ARShowInformationURLFormat = @"/api/v1/show/%@";
NSString *const ARShowsURL = @"/api/v1/shows";

NSString *const ARNewSearchURL = @"/api/v1/match";
NSString *const ARNewArtistSearchURL = @"/api/v1/match/artists";

NSString *const ARSiteHeroUnitsURL = @"/api/v1/site_hero_units";

NSString *const AROnDutyRepresentativesURL = @"/api/v1/admins/available_representatives";
NSString *const ARArtworkInquiryRequestURL = @"/api/v1/me/artwork_inquiry_request";

NSString *const ARGeneArtworksURLFormat = @"/api/v1/search/filtered/gene/%@";
NSString *const ARShowArtworksURLFormat = @"/api/v1/partner/%@/show/%@/artworks";
NSString *const ARShowImagesURLFormat = @"/api/v1/partner_show/%@/images";

NSString *const AROrderedSetsURL = @"/api/v1/sets";
NSString *const AROrderedSetItemsURLFormat = @"/api/v1/set/%@/items";

NSString *const ARSuggestedHomepageArtworks = @"/api/v1/me/suggested/artworks/homepage";
NSString *const ARNotificationsURL = @"/api/v1/notifications";

NSString *const ARSiteFeaturesURL = @"/api/v1/site_features/";

NSString *const ARMyDevicesURL = @"/api/v1/me/device";
NSString *const ARSiteUpURL = @"/api/v1/system/up";

NSString *const ARProfilePostsURLFormat = @"/api/v1/profile/%@/posts";

NSString *const ARNewFairInfoURLFormat = @"/api/v1/fair/%@";
NSString *const ARNewFairShowsURLFormat = @"/api/v1/fair/%@/shows";
NSString *const ARNewFairMapURLFormat = @"/api/v1/maps?fair_id=%@";

NSString *const ARNewRelatedPostsURL = @"/api/v1/related/posts";
NSString *const ARShowsFeaturingArtistsURLFormat = @"/api/v1/fair/%@/shows";

NSString *const ARSystemTimeURL = @"/api/v1/system/time";

NSString *const ARCreatePendingOrderURL = @"/api/v1/me/order/pending/items";
