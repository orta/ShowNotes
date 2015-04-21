#import "ShowNotesViewController.h"
#import "UIImageView+Networking.h"
#import "ARRouter.h"

@import KVOController;
@import FastttCamera;
@import FSOpenInInstagram;

@interface ShowNotesViewController () <FastttCameraDelegate>

@property (weak, nonatomic) IBOutlet UILabel *artworkTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *artworkSubtitleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *artworkPreviewImage;

@end

@implementation ShowNotesViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    FastttCamera *camera = self.childViewControllers.firstObject;
    camera.delegate = self;
    self.artworkSubtitleLabel.backgroundColor = [UIColor clearColor];

    [self.KVOController observe:self keyPath:@"self.artwork" options: NSKeyValueObservingOptionInitial|NSKeyValueObservingOptionNew block:^(id observer, id object, NSDictionary *change) {

        self.artworkTitleLabel.text = self.artwork.title;
        self.artworkSubtitleLabel.text = self.artwork.medium;

        NSURLRequest *request = [ARRouter directImageRequestForModel:Artwork.class andSlug:self.artwork.artworkID];
        [self.artworkPreviewImage ar_setImageWithURLRequest:request];
    }];
}

- (IBAction)instagramButtonTapped:(id)sender
{
    FastttCamera *camera = self.childViewControllers.firstObject;
    [camera takePicture];
}

- (void)cameraController:(id<FastttCameraInterface>)cameraController didFinishNormalizingCapturedImage:(FastttCapturedImage *)capturedImage
{
    FSOpenInInstagram  *instagram = [[FSOpenInInstagram alloc] init];
    NSString *caption = [NSString stringWithFormat:@"I love %@ ", self.artwork.title];
    [instagram postImage:capturedImage.fullImage caption:caption inView:self.view];
}

@end
