//
//  HZZoneHomeViewController.m
//  HZZone
//
//  Created by codehzx on 2021/7/26.
//

#import "HZZoneHomeViewController.h"
#import "HZZoneHomeHeaderView.h"
#import "HZZoneHomeTableViewCell.h"
#import "HZZoneGoodListViewController.h"
#import "HZZoneHomeKefuViewController.h"
@interface HZZoneHomeViewController ()<HZZoneHomeHeaderViewDelegate>
@property(nonatomic,strong) HZZoneHomeHeaderView * HZZoneHeader;
@property(nonatomic,strong) UIView * HZZoneFooterView;
@end

@implementation HZZoneHomeViewController
- (HZZoneHomeHeaderView *)HZZoneHeader{
    if (!_HZZoneHeader) {
        _HZZoneHeader = [[HZZoneHomeHeaderView alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, GK_IS_iPhoneX ? (GK_SAFEAREA_TOP+400) : 400)];
        _HZZoneHeader.delegate = self;
    }
    return _HZZoneHeader;
}
- (UIView *)HZZoneFooterView{
    if (!_HZZoneFooterView) {
        _HZZoneFooterView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, 100)];
        _HZZoneFooterView.backgroundColor = [UIColor whiteColor];
        
        UILabel * HZZoneToplb = [[UILabel alloc]initWithFrame:CGRectMake(0, 20, GK_SCREEN_WIDTH, 20)];
        HZZoneToplb.textAlignment = NSTextAlignmentCenter;
        HZZoneToplb.textColor = LGDLightBLackColor;
        HZZoneToplb.text = @"企鹅追剧";
        HZZoneToplb.font = KFZPFont(20);
        
        
        UILabel * HZZoneBtomlb = [[UILabel alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(HZZoneToplb.frame)+5, GK_SCREEN_WIDTH, 15)];
        HZZoneBtomlb.textAlignment = NSTextAlignmentCenter;
        HZZoneBtomlb.textColor = LGDGaryColor;
        HZZoneBtomlb.text = @"Qi E Zhui Ju";
        HZZoneBtomlb.font = KFZPFont(12);
        [_HZZoneFooterView addSubview:HZZoneToplb];
        [_HZZoneFooterView addSubview:HZZoneBtomlb];

    }
    return _HZZoneFooterView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navigationBar.hidden = YES;
    self.HZZoneBaseTableView.frame = CGRectMake(0, 0, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-GK_TABBAR_HEIGHT);
    self.HZZoneBaseTableView.tableHeaderView = self.HZZoneHeader;
    self.HZZoneBaseTableView.tableFooterView  = self.HZZoneFooterView;
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
#pragma mark--HZZoneHomeHeaderViewDelegate
-(void)HZZoneHomeHeaderViewWithBtnIndex:(NSInteger)btnIndex{
    if (btnIndex == 0) {
        HZZoneGoodListViewController * hzzoneVc = [[HZZoneGoodListViewController alloc]init];
        hzzoneVc.hidesBottomBarWhenPushed = YES;
        hzzoneVc.index =  0;
        [self.navigationController pushViewController:hzzoneVc animated:YES];
    }else if (btnIndex == 1){
        HZZoneGoodListViewController * hzzoneVc = [[HZZoneGoodListViewController alloc]init];
        hzzoneVc.hidesBottomBarWhenPushed = YES;
        hzzoneVc.index =  1;
        [self.navigationController pushViewController:hzzoneVc animated:YES];
    }else if (btnIndex == 2){
        
    }else if (btnIndex == 3){
        HZZoneHomeKefuViewController * hzzoneKefuVc = [[HZZoneHomeKefuViewController alloc]init];
        [self.navigationController pushViewController:hzzoneKefuVc animated:YES];
    }
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
