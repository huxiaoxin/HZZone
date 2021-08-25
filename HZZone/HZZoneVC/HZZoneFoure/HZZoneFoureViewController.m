//
//  HZZoneFoureViewController.m
//  HZZone
//
//  Created by codehzx on 2021/7/26.
//

#import "HZZoneFoureViewController.h"
#import "HZZoneTreeDetailTableViewCell.h"
@interface HZZoneFoureViewController ()

@end

@implementation HZZoneFoureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navLineHidden = YES;
    
    UIView * HzzoneSearchingView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH-60, 40)];
    HzzoneSearchingView.layer.cornerRadius = 20;
    HzzoneSearchingView.backgroundColor = [UIColor whiteColor];
    [HzzoneSearchingView viewShadowPathWithColor:LGDGaryColor shadowOpacity:0.2 shadowRadius:20 shadowPathType:LeShadowPathAround shadowPathWidth:5];
    
    UITextField * hzzoneInputeTextField = [[UITextField alloc]initWithFrame:CGRectMake(15, 5, CGRectGetWidth(HzzoneSearchingView.frame)-30, CGRectGetHeight(HzzoneSearchingView.frame)-10)];
    hzzoneInputeTextField.textColor = LGDBLackColor;
    hzzoneInputeTextField.font = [UIFont systemFontOfSize:15];
    hzzoneInputeTextField.clearButtonMode = UITextFieldViewModeAlways;
    [hzzoneInputeTextField addPlaceholders:[UIFont systemFontOfSize:15] holderStr:@"找人" holderColor:LGDGaryColor];
    [HzzoneSearchingView addSubview:hzzoneInputeTextField];
    
    
    self.gk_navTitleView =  HzzoneSearchingView;
    self.HZZoneBaseTableView.frame = CGRectMake(0, GK_STATUSBAR_NAVBAR_HEIGHT, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-GK_STATUSBAR_NAVBAR_HEIGHT-GK_TABBAR_HEIGHT);
    // Do any additional setup after loading the view.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    HZZoneTreeDetailTableViewCell * hzzCell  =[HZZoneTreeDetailTableViewCell HZZoneCreateCellWithTheTableView:tableView WithTheIndexPath:indexPath];
    return hzzCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 70;
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
