@import UIKit;
@import SSDataSources;

@interface ArtworkCollectionViewCell : SSBaseCollectionCell

@property (weak, nonatomic) IBOutlet UIImageView *artworkPreviewImageView;
@property (weak, nonatomic) IBOutlet UILabel *artworkTitleLabel;

@end
