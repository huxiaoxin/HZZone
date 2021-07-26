//
//  HZZoneHomeViewController.m
//  HZZone
//
//  Created by codehzx on 2021/7/26.
//

#import "HZZoneHomeViewController.h"
#import "HZZoneHomeHeaderView.h"
#import "HZZoneHomeTableViewCell.h"
@interface HZZoneHomeViewController ()
@property(nonatomic,strong) HZZoneHomeHeaderView * HZZoneHeader;
@end

@implementation HZZoneHomeViewController
- (HZZoneHomeHeaderView *)HZZoneHeader{
    if (!_HZZoneHeader) {
        _HZZoneHeader = [[HZZoneHomeHeaderView alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, GK_IS_iPhoneX ? (GK_SAFEAREA_TOP+400) : 400)];
    }
    return _HZZoneHeader;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navigationBar.hidden = YES;
    self.HZZoneBaseTableView.frame = CGRectMake(0, 0, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-GK_TABBAR_HEIGHT);
    self.HZZoneBaseTableView.tableHeaderView = self.HZZoneHeader;
    
    MJWeakSelf;
    self.HZZoneHeader.headerBlock = ^(CGFloat headerHeight) {
        weakSelf.HZZoneHeader.height = headerHeight;
        weakSelf.HZZoneBaseTableView.tableHeaderView = weakSelf.HZZoneHeader;
    };
    // Do any additional setup after loading the view.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    HZZoneHomeTableViewCell * HzzoneCell = [HZZoneHomeTableViewCell HZZoneCreateCellWithTheTableView:tableView WithTheIndexPath:indexPath];
    return HzzoneCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 367+40;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
