//
//  HZZoneThreeViewController.m
//  HZZone
//
//  Created by codehzx on 2021/7/26.
//

#import "HZZoneThreeViewController.h"
#import "HZZoneThreeTableViewCell.h"
@interface HZZoneThreeViewController ()

@end

@implementation HZZoneThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navTitle = @"活动";
    self.HZZoneBaseTableView.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
    UIView * HZZoneSendingView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
    UIButton * HZZoneSendBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [HZZoneSendBtn setImage:[UIImage imageNamed:@"xie"] forState:UIControlStateNormal];
    [HZZoneSendBtn setFrame:CGRectMake(0, 15, 20, 20)];
    [HZZoneSendBtn addTarget:self action:@selector(HZZoneSendBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [HZZoneSendingView addSubview:HZZoneSendBtn];
    self.gk_navRightBarButtonItem =[[UIBarButtonItem alloc]initWithCustomView:HZZoneSendingView];
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
-(void)HZZoneSendBtnClick{
    
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
