#import "ShowResultTableViewCell.h"
#import "ARRouter.h"
#import "UIImageView+Networking.h"

@interface ShowResultTableViewCell()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *subtitleLabel;
@end

@implementation ShowResultTableViewCell

@synthesize imageView, titleLabel, subtitleLabel;

- (void)updateWithShow:(PartnerShow *)show
{
    NSURLRequest *request = [ARRouter directImageRequestForModel:PartnerShow.class andSlug:show.showID];
    [self.imageView ar_setImageWithURLRequest:request];

    self.titleLabel.text = show.name;
    self.subtitleLabel.text = show.partner.name;
}

@end
