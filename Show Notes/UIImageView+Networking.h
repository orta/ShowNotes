@import UIKit;

@interface UIImageView (AsyncImageLoading)

- (void)ar_setImageWithURL:(NSURL *)url;
- (void)ar_setImageWithURLRequest:(NSURLRequest *)request;

@end