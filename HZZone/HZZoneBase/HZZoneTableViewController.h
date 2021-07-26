//
//  HZZoneTableViewController.h
//  HZZone
//
//  Created by codehzx on 2021/7/26.
//

#import "HZZoneBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface HZZoneTableViewController : HZZoneBaseViewController<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong) UITableView * HZZoneBaseTableView;

@end

NS_ASSUME_NONNULL_END
