//
//  HZZoneHotRemenViewController.m
//  HZZone
//
//  Created by codehzx on 2021/8/14.
//

#import "HZZoneHotRemenViewController.h"
#import "HZZoneHotRemenHeaderView.h"
#import "HZZoneHotRemenFirstTableViewCell.h"
#import "HZZoneRemenSecondTableViewCell.h"
@interface HZZoneHotRemenViewController ()
@property(nonatomic,strong) HZZoneHotRemenHeaderView * hotHeader;
@end

@implementation HZZoneHotRemenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navTitle = @"影视热门";
    [self.view addSubview:self.HZZoneBaseTableView];
    self.HZZoneBaseTableView.tableHeaderView = self.hotHeader;
    // Do any additional setup after loading the view.
}
- (HZZoneHotRemenHeaderView *)hotHeader{
    if (!_hotHeader) {
        _hotHeader = [[HZZoneHotRemenHeaderView alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, 460)];
    }
    return _hotHeader;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        HZZoneHotRemenFirstTableViewCell * hzzoneCell = [HZZoneHotRemenFirstTableViewCell HZZoneCreateCellWithTheTableView:tableView WithTheIndexPath:indexPath];
        return hzzoneCell;
    }else{
        HZZoneRemenSecondTableViewCell  * hzzSecondCell = [HZZoneRemenSecondTableViewCell HZZoneCreateCellWithTheTableView:tableView WithTheIndexPath:indexPath];
        return hzzSecondCell;
    }
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        return 250;
    }else{
        return 110;
    }
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    if (section == 0) {
        
        return 50;
    }else{
        return 0;
    }
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView * Header = [UIView new];
    Header.backgroundColor = [UIColor whiteColor];
    
    UILabel * Headerlb = [[UILabel alloc]initWithFrame:CGRectMake(15, 10, 200, 20)];
    Headerlb.text = @"精选影视";
    Headerlb.textColor = LGDBLackColor;
    Headerlb.font = [UIFont boldSystemFontOfSize:16];
    [Header addSubview:Headerlb];
    return Header;
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
