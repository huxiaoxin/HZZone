//
//  HZZoneSecondSubViewController.m
//  HZZone
//
//  Created by codehzx on 2021/8/14.
//

#import "HZZoneSecondSubViewController.h"
#import "HZZoneSecondSubTableViewCell.h"
#import "HZZoneSecondHeaderView.h"
@interface HZZoneSecondSubViewController ()<HZZoneSecondSubTableViewCellDelegate>
@property(nonatomic,strong) HZZoneSecondHeaderView * HzzHeader;
@end

@implementation HZZoneSecondSubViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navigationBar.hidden = YES;
    self.HZZoneBaseTableView.frame = CGRectMake(0, 0, GK_SCREEN_HEIGHT, GK_SCREEN_HEIGHT-GK_STATUSBAR_NAVBAR_HEIGHT-GK_TABBAR_HEIGHT-K(60));
    self.HZZoneBaseTableView.tableHeaderView = self.HzzHeader;
    
}
- (HZZoneSecondHeaderView *)HzzHeader{
    if (!_HzzHeader) {
        _HzzHeader = [[HZZoneSecondHeaderView alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, 150)];
    }
    return _HzzHeader;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    HZZoneSecondSubTableViewCell * HZZoneCell  =[HZZoneSecondSubTableViewCell HZZoneCreateCellWithTheTableView:tableView WithTheIndexPath:indexPath];
    HZZoneCell.delegate  =self;
    HZZoneCell.tag = indexPath.row;
    return HZZoneCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 125;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 55;
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView * SectionHeader = [UIView new];
    SectionHeader.backgroundColor = [UIColor whiteColor];
    UILabel * SectioinToplb = [[UILabel alloc]initWithFrame:CGRectMake(15, 10, 200, 18)];
    SectioinToplb.textColor = LGDBLackColor;
    SectioinToplb.font = [UIFont boldSystemFontOfSize:18];
    SectioinToplb.text = @"精选电影人";
    [SectionHeader addSubview:SectioinToplb];
    UILabel * SectioinBtomlb = [[UILabel alloc]initWithFrame:CGRectMake(15, CGRectGetMaxY(SectioinToplb.frame)+2, 200, 15)];
    SectioinBtomlb.textColor = LGDLightBLackColor;
    SectioinBtomlb.font = [UIFont systemFontOfSize:12];
    SectioinBtomlb.text = @"2018.12.25";
    [SectionHeader addSubview:SectioinBtomlb];


    UIButton * SectionVtn  =[UIButton buttonWithType:UIButtonTypeCustom];
    [SectionVtn setImage:[UIImage imageNamed:@"youbian"] forState:UIControlStateNormal];
    [SectionVtn setFrame:CGRectMake(GK_SCREEN_WIDTH-40, CGRectGetMidY(SectioinToplb.frame)+2, 20, 20)];
    [SectionHeader addSubview:SectionVtn];
    
    return SectionHeader;
}
#pragma mark--HZZoneSecondSubTableViewCellDelegate
-(void)HZZoneSecondSubTableViewCellWithbtnIndex:(NSInteger)btnIndex Cellndex:(NSInteger)cellIndex{
    
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
