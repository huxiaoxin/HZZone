#import "HZZoneActityDetailViewController.h"
#import "HZZoneVideoActityDetailHeader.h"
#import "HZZoneAcittyDetailFooter.h"
#import "HZZoneBaomingDetailViewController.h"
@interface HZZoneActityDetailViewController ()
@property(nonatomic,strong) HZZoneVideoActityDetailHeader * hzzoneHeader;
@property(nonatomic,strong) HZZoneAcittyDetailFooter * hzzoneFooter;
@property(nonatomic,strong) UIButton *  hzzoneCollteceBtn;
@property(nonatomic,strong) UIButton * hzzoneJoinBtn;
@end

@implementation HZZoneActityDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navBarAlpha = 0;
    self.view.backgroundColor = [UIColor whiteColor];
    [self.HZZoneBaseTableView setFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, GK_SCREEN_HEIGHT-GK_SAFEAREA_BTM)];
    // Do any additional setup after loading the view.
    
    [LCProgressHUD showLoading:@""];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [LCProgressHUD hide];
        self.HZZoneBaseTableView.tableHeaderView = self.hzzoneHeader;
        self.HZZoneBaseTableView.tableFooterView = self.hzzoneFooter;
        MJWeakSelf;
        _hzzoneHeader.headerBlock = ^(CGFloat headerHeight) {
            weakSelf.hzzoneHeader.height = headerHeight;
            weakSelf.HZZoneBaseTableView.tableHeaderView = weakSelf.hzzoneHeader;
        };
        
        _hzzoneFooter.footerBlock = ^(CGFloat fotterHeight) {
            weakSelf.hzzoneFooter.height = fotterHeight;
            weakSelf.HZZoneBaseTableView.tableFooterView = weakSelf.hzzoneFooter;
        };
        
        _hzzoneFooter.hzzoneModel = self.carpselMoel;
        _hzzoneHeader.carpModel = self.carpselMoel;
        [self.view addSubview:self.hzzoneCollteceBtn];
        [self.view addSubview:self.hzzoneJoinBtn];
        if ([CarpVideoLoginVideModelTool CarpVideoLoginViewModel_isLogin]) {
            _hzzoneCollteceBtn.selected = self.carpselMoel.isCollted;
            _hzzoneJoinBtn.selected = self.carpselMoel.isBaoming;
            
            if (self.carpselMoel.isBaoming) {
                [self.hzzoneJoinBtn setBackgroundColor:LGDGaryColor];
                
                
            }else{
                [self.hzzoneJoinBtn setBackgroundColor:LGDMianColor];
                
            }
        }else{
            _hzzoneCollteceBtn.selected = NO;
            _hzzoneJoinBtn.selected = NO;
        }
        
        
    });
    
    
    
    
    
    
}
- (UIButton *)hzzoneCollteceBtn{
    if (!_hzzoneCollteceBtn) {
        _hzzoneCollteceBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_hzzoneCollteceBtn setBackgroundColor:LGDBlueColor];
        [_hzzoneCollteceBtn setTitle:@"收藏" forState:UIControlStateNormal];
        [_hzzoneCollteceBtn setTitle:@"已收藏" forState:UIControlStateSelected];
        _hzzoneCollteceBtn.titleLabel.textColor = [UIColor whiteColor];
        _hzzoneCollteceBtn.titleLabel.font = KBlFont(17);
        _hzzoneCollteceBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_hzzoneCollteceBtn addTarget:self action:@selector(hzzoneCollteceBtnClick) forControlEvents:UIControlEventTouchUpInside];
        [_hzzoneCollteceBtn setFrame:CGRectMake(GK_SCREEN_WIDTH/2-RealWidth(120), GK_SCREEN_HEIGHT-RealWidth(40)-GK_SAFEAREA_BTM, RealWidth(120), RealWidth(36))];
        [_hzzoneCollteceBtn acs_radiusWithRadius:RealWidth(18) corner:UIRectCornerTopLeft | UIRectCornerBottomLeft];
    }
    return _hzzoneCollteceBtn;
}
- (UIButton *)hzzoneJoinBtn{
    if (!_hzzoneJoinBtn) {
        _hzzoneJoinBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_hzzoneJoinBtn setBackgroundColor:LGDMianColor];
        [_hzzoneJoinBtn setTitle:@"立即报名" forState:UIControlStateNormal];
        [_hzzoneJoinBtn setTitle:@"已报名" forState:UIControlStateSelected];
        _hzzoneJoinBtn.titleLabel.textColor = [UIColor whiteColor];
        _hzzoneJoinBtn.titleLabel.font = KBlFont(17);
        _hzzoneJoinBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_hzzoneJoinBtn addTarget:self action:@selector(hzzoneJoinBtnClikc) forControlEvents:UIControlEventTouchUpInside];
        [_hzzoneJoinBtn setFrame:CGRectMake(CGRectGetMaxX(_hzzoneCollteceBtn.frame), GK_SCREEN_HEIGHT-RealWidth(40)-GK_SAFEAREA_BTM, RealWidth(120), RealWidth(36))];
        [_hzzoneJoinBtn acs_radiusWithRadius:RealWidth(18) corner:UIRectCornerTopRight | UIRectCornerBottomRight];
    }
    return _hzzoneJoinBtn;
}
#pragma mark--收藏
-(void)hzzoneCollteceBtnClick{
    if (![CarpVideoLoginVideModelTool CarpVideoLoginViewModel_isLogin]) {
        [self HZZoneShowLoginVc];
        return;
    }
    [LCProgressHUD showLoading:@""];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.carpselMoel.isCollted  = !self.carpselMoel.isCollted;
        [LCProgressHUD showSuccess:self.carpselMoel.isCollted ? @"已收藏" : @"取消收藏"];
        [WHC_ModelSqlite update:[carpVideoAcitytyModel class] value:[NSString stringWithFormat:@"isCollted ='%@'",@(self.carpselMoel.isCollted)] where:[NSString stringWithFormat:@"LoactionID ='%ld'",self.carpselMoel.LoactionID]];
        self.hzzoneCollteceBtn.selected = self.carpselMoel.isCollted;
    });
    
}
#pragma mark--报名
-(void)hzzoneJoinBtnClikc{
    
    if (![CarpVideoLoginVideModelTool CarpVideoLoginViewModel_isLogin]) {
        [self HZZoneShowLoginVc];
        return;
    }
    
    if (self.carpselMoel.isBaoming) {
        [LCProgressHUD showInfoMsg:@"您已报名～"];
        return;
    }
    [[GKNavigationBarConfigure sharedInstance] updateConfigure:^(GKNavigationBarConfigure *configure) {
        configure.backStyle = GKNavigationBarBackStyleBlack;
    }];
    
    HZZoneBaomingDetailViewController * baoingDetailVc = [[HZZoneBaomingDetailViewController alloc]init];
    baoingDetailVc.hzzoneMoel = self.carpselMoel;
    [self.navigationController pushViewController:baoingDetailVc animated:YES];
    
    
    
    
}
- (HZZoneAcittyDetailFooter *)hzzoneFooter{
    if (!_hzzoneFooter) {
        _hzzoneFooter = [[HZZoneAcittyDetailFooter alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, RealWidth(300))];
    }
    return _hzzoneFooter;
}
- (HZZoneVideoActityDetailHeader *)hzzoneHeader{
    if (!_hzzoneHeader) {
        _hzzoneHeader = [[HZZoneVideoActityDetailHeader alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, RealWidth(0)+GK_SAFEAREA_TOP)];
    }
    return _hzzoneHeader;
}
-(void)viewWillDisappear:(BOOL)animated{
    [[GKNavigationBarConfigure sharedInstance] updateConfigure:^(GKNavigationBarConfigure *configure) {
        configure.backStyle = GKNavigationBarBackStyleBlack;
    }];
    
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
