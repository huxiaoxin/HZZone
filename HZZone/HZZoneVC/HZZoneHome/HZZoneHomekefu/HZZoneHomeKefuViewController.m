//
//  HZZoneHomeKefuViewController.m
//  HZZone
//
//  Created by codehzx on 2021/7/28.
//

#import "HZZoneHomeKefuViewController.h"
#import "HZZoneHomeKefuHeaderView.h"
#import "HZZoneKefuTypeFirstTableViewCell.h"
#import "HZZoneKefuSendView.h"
#import <XHInputView-umbrella.h>
@interface HZZoneHomeKefuViewController ()
@property(nonatomic,strong) HZZoneHomeKefuHeaderView * hzzoneHeader;
@property(nonatomic,strong) HZZoneKefuSendView * sendView;
@end

@implementation HZZoneHomeKefuViewController
- (HZZoneHomeKefuHeaderView *)hzzoneHeader{
    if (!_hzzoneHeader) {
        _hzzoneHeader  = [[HZZoneHomeKefuHeaderView alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, 280)];
    }
    return _hzzoneHeader;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navTitle = @"智能客服";
    self.HZZoneBaseTableView.tableHeaderView  =self.hzzoneHeader;
    [self.view addSubview:self.sendView];
    // Do any additional setup after loading the view.
}
- (HZZoneKefuSendView *)sendView{
    if (!_sendView) {
        _sendView = [[HZZoneKefuSendView alloc]initWithFrame:CGRectMake(GK_SCREEN_WIDTH-60, GK_SCREEN_HEIGHT-GK_STATUSBAR_NAVBAR_HEIGHT-GK_SAFEAREA_BTM-50, 50, 50)];
        _sendView.freeRect = CGRectMake(0, GK_STATUSBAR_NAVBAR_HEIGHT, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-GK_STATUSBAR_NAVBAR_HEIGHT-GK_SAFEAREA_BTM);
        
        MJWeakSelf;
        _sendView.clickDragViewBlock = ^(WMDragView *dragView) {
            [weakSelf ShowInputViews];
        };
    }
    return _sendView;
}
-(void)ShowInputViews{
    MJWeakSelf;
    [XHInputView showWithStyle:InputViewStyleLarge configurationBlock:^(XHInputView *inputView) {
        
    } sendBlock:^BOOL(NSString *text) {
        if (text.length > 0) {
            
            return YES;
        }else{
            [LCProgressHUD showInfoMsg:@"请输入内容"];
            return NO;
        }
    }];

}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    HZZoneKefuTypeFirstTableViewCell * hzzKefuCell = [HZZoneKefuTypeFirstTableViewCell HZZoneCreateCellWithTheTableView:tableView WithTheIndexPath:indexPath];
    return hzzKefuCell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 150;
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
