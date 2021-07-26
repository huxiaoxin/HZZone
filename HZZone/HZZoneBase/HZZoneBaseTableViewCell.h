//
//  HZZoneBaseTableViewCell.h
//  HZZone
//
//  Created by codehzx on 2021/7/26.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HZZoneBaseTableViewCell : UITableViewCell
+(id)HZZoneCreateCellWithTheTableView:(UITableView *)tableView WithTheIndexPath:(NSIndexPath *)indexPath;
-(void)HZZoneAddSubViews;

@end

NS_ASSUME_NONNULL_END
