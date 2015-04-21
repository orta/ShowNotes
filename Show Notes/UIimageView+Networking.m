@import UIKit;
@import AFNetworking;

@implementation UIImageView (AsyncImageLoading)

- (void)ar_setImageWithURL:(NSURL *)url
{
    [self setImageWithURL:url];
}

- (void)ar_setImageWithURLRequest:(NSURLRequest *)request;
{
    [self setImageWithURLRequest:request placeholderImage:nil success:nil failure:nil];
}

@end