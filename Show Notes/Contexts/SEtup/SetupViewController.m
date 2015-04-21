#import "SetupViewController.h"
#import "ShowLocationsController.h"
#import "UserSession.h"
#import "ShowFinderViewController.h"

@import KVOController;

@interface SetupViewController ()
@property (weak, nonatomic) IBOutlet UILabel *authenticatingWithArtsyLabel;
@property (weak, nonatomic) IBOutlet UILabel *accessToLocationLabel;
@property (weak, nonatomic) IBOutlet UIButton *continueButton;
@property (weak, nonatomic) IBOutlet UIButton *locationAccessButton;
@end

@implementation SetupViewController

- (void)awakeFromNib
{
    [super awakeFromNib];

    _session = [[UserSession alloc] init];

    [self.KVOController observe:self.session keyPath:@"hasTemporaryToken" options:NSKeyValueObservingOptionInitial|NSKeyValueObservingOptionNew block:^(id observer, id object, NSDictionary *change) {
        if ([change[@"new"] boolValue]) {
            self.continueButton.enabled = YES;
            self.authenticatingWithArtsyLabel.text = @"Auth'd";
        }
    }];

    [self.KVOController observe:self.locationController keyPath:@"hasLocationAccess" options:NSKeyValueObservingOptionInitial|NSKeyValueObservingOptionNew block:^(id observer, ShowLocationsController *object, NSDictionary *change) {
        if ([change[@"new"] boolValue]) {
            self.accessToLocationLabel.text = @"Got access for locations";
            self.locationAccessButton.enabled = NO;
        }
    }];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];

    [self.session getTemporaryToken];
    [self.locationController checkForLocationAccess];
}

- (IBAction)requestAccessTapped:(id)sender
{
    [self.locationController requestAccess];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // one segue send along the session
}


@end
