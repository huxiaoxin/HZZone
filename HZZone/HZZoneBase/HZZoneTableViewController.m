//
//  HZZoneTableViewController.m
//  HZZone
//
//  Created by codehzx on 2021/7/26.
//

#import "HZZoneTableViewController.h"

@interface HZZoneTableViewController ()

@end

@implementation HZZoneTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.HZZoneBaseTableView];
}
- (UITableView *)HZZoneBaseTableView{
    if (!_HZZoneBaseTableView) {
        _HZZoneBaseTableView =[[UITableView alloc]initWithFrame:CGRectMake(0, GK_STATUSBAR_NAVBAR_HEIGHT, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-GK_SAFEAREA_BTM-GK_STATUSBAR_NAVBAR_HEIGHT) style:UITableViewStylePlain];
        _HZZoneBaseTableView.dataSource = self;
        _HZZoneBaseTableView.delegate = self;
        _HZZoneBaseTableView.backgroundView = nil;
        _HZZoneBaseTableView.showsVerticalScrollIndicator=NO;
        _HZZoneBaseTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _HZZoneBaseTableView.separatorColor = [UIColor clearColor];
        _HZZoneBaseTableView.backgroundColor = [UIColor clearColor];
    }
    return _HZZoneBaseTableView;
}
- (BOOL)shouldAutorotate {
    // 只支持竖屏
    return NO;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return UIInterfaceOrientationPortrait;
}
#pragma mark- 委托部分

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 0;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0.000f;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    return nil;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0.00f;
}

-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    return nil;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return nil;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
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
