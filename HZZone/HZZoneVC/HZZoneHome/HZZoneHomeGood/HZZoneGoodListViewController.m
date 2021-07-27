//
//  HZZoneGoodListViewController.m
//  HZZone
//
//  Created by codehzx on 2021/7/27.
//

#import "HZZoneGoodListViewController.h"
#import "HZZoneGoodListTableViewCell.h"
@interface HZZoneGoodListViewController ()

@end

@implementation HZZoneGoodListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navTitle = @"甄选好片";
    // Do any additional setup after loading the view.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    HZZoneGoodListTableViewCell * hzzoneGoodCell = [HZZoneGoodListTableViewCell HZZoneCreateCellWithTheTableView:tableView WithTheIndexPath:indexPath];
    return hzzoneGoodCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 140;
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
