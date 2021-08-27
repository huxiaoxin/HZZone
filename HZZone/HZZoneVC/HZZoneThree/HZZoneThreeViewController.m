//
//  HZZoneThreeViewController.m
//  HZZone
//
//  Created by codehzx on 2021/7/26.
//

#import "HZZoneThreeViewController.h"
#import "HZZoneThreeTableViewCell.h"
#import "HZZoneThreeDetailViewController.h"
#import "HZZoneActityDetailViewController.h"
@interface HZZoneThreeViewController ()

@end

@implementation HZZoneThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navTitle = @"活动";
    self.HZZoneBaseTableView.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor =  LGDLightGaryColor;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    HZZoneThreeTableViewCell *HzzoneCell = [HZZoneThreeTableViewCell HZZoneCreateCellWithTheTableView:tableView WithTheIndexPath:indexPath];
    return HzzoneCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 260;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    HZZoneActityDetailViewController *threeDetailVc = [[HZZoneActityDetailViewController alloc]init];
    threeDetailVc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:threeDetailVc animated:YES];
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
