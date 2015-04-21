#import "ShowTableViewModel.h"
#import "ShowResultTableViewCell.h"

@implementation ShowTableViewModel

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.shows.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ShowResultTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"show"];
    [cell updateWithShow:self.shows[indexPath.row]];
    return cell;
}

@end
