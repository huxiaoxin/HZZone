//
//  HZZoneSecondViewController.m
//  HZZone
//
//  Created by codehzx on 2021/7/26.
//

#import "HZZoneSecondViewController.h"
#import <SPPageMenu/SPPageMenu-umbrella.h>
#import "HZZoneSecondSenViewController.h"
#define scrollViewHeight (GK_SCREEN_HEIGHT-GK_TABBAR_HEIGHT-K(60))
@interface HZZoneSecondViewController ()<SPPageMenuDelegate,UIScrollViewDelegate>
@property(nonatomic,strong) SPPageMenu * SanXiaMyWorkerMenu;
@property(nonatomic,strong) UIScrollView * SanXiaMyWorkerScrollView;
@property(nonatomic,strong) UIView  * SanXiaMyWorkerTopView;
@property(nonatomic,strong) NSMutableArray * SanXiaMyWorkerClaaArr;
@property(nonatomic,strong) NSMutableArray * SanXiaMyWorkerTagArr;
@property (nonatomic, strong) NSMutableArray *SanXiaMyWorkerClaaArrs;
@end

@implementation HZZoneSecondViewController
-(UIView *)SanXiaMyWorkerTopView{
    if (!_SanXiaMyWorkerTopView) {
        _SanXiaMyWorkerTopView =  [[UIView alloc]initWithFrame:CGRectMake(0, GK_STATUSBAR_NAVBAR_HEIGHT, SCREEN_Width, K(60))];
    }
    return _SanXiaMyWorkerTopView;
}
-(NSMutableArray *)SanXiaMyWorkerTagArr{
    if (!_SanXiaMyWorkerTagArr) {
        _SanXiaMyWorkerTagArr = [[NSMutableArray alloc]initWithArray:@[@"鹅评",@"鹅社",@"鹅人"]];
    }
    return _SanXiaMyWorkerTagArr;
}
-(NSMutableArray *)SanXiaMyWorkerClaaArrs{
    if (!_SanXiaMyWorkerClaaArrs) {
        _SanXiaMyWorkerClaaArrs = [[NSMutableArray alloc]init];
    }
    return _SanXiaMyWorkerClaaArrs;
}
-(SPPageMenu *)SanXiaMyWorkerMenu{
    if (!_SanXiaMyWorkerMenu) {
        _SanXiaMyWorkerMenu = [[SPPageMenu alloc]initWithFrame:CGRectMake(0, 5, SCREEN_Width, K(45)) trackerStyle:SPPageMenuTrackerStyleLineAttachment];
        _SanXiaMyWorkerMenu.backgroundColor = [UIColor whiteColor];
        _SanXiaMyWorkerMenu.selectedItemTitleColor = [UIColor colorWithHexString:@"#333333"];
        _SanXiaMyWorkerMenu.unSelectedItemTitleColor = [UIColor colorWithHexString:@"#333333"];
        _SanXiaMyWorkerMenu.selectedItemTitleFont = [UIFont boldSystemFontOfSize:19];
        _SanXiaMyWorkerMenu.unSelectedItemTitleFont = [UIFont systemFontOfSize:17];
        _SanXiaMyWorkerMenu.tracker.backgroundColor = LGDMianColor;
        [_SanXiaMyWorkerMenu setItems:self.SanXiaMyWorkerTagArr selectedItemIndex:0];
        _SanXiaMyWorkerMenu.delegate = self;
        _SanXiaMyWorkerMenu.bridgeScrollView = self.SanXiaMyWorkerScrollView;
        _SanXiaMyWorkerMenu.dividingLineHeight =0;
        _SanXiaMyWorkerMenu.contentInset =  UIEdgeInsetsMake(0, K(10), 0, K(10));
    }
    return _SanXiaMyWorkerMenu;
}

-(NSMutableArray *)SanXiaMyWorkerClaaArr{
    if (!_SanXiaMyWorkerClaaArr) {
        _SanXiaMyWorkerClaaArr = [[NSMutableArray alloc]init];
    }
    return _SanXiaMyWorkerClaaArr;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navTitle = @"影社";
    
    UIView * HZZoneSendingView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
    UIButton * HZZoneSendBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [HZZoneSendBtn setImage:[UIImage imageNamed:@"xie"] forState:UIControlStateNormal];
    [HZZoneSendBtn setFrame:CGRectMake(0, 15, 20, 20)];
    [HZZoneSendBtn addTarget:self action:@selector(HZZoneSendBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [HZZoneSendingView addSubview:HZZoneSendBtn];
    self.gk_navRightBarButtonItem =[[UIBarButtonItem alloc]initWithCustomView:HZZoneSendingView];
    [self.view addSubview:self.SanXiaMyWorkerTopView];
    [self.SanXiaMyWorkerTopView addSubview:self.SanXiaMyWorkerMenu];
    [self.view addSubview:self.SanXiaMyWorkerScrollView];
    [self.SanXiaMyWorkerMenu setItems:self.SanXiaMyWorkerTagArr selectedItemIndex:0];
    [self SanXiaMyWorkerLoadClass];
}
-(void)HZZoneSendBtnClick{
    HZZoneSecondSenViewController * HZZoneVc = [[HZZoneSecondSenViewController alloc]init];
    UINavigationController * nav = [UINavigationController rootVC:HZZoneVc];
    [self presentViewController:nav animated:YES completion:nil];
}
#pragma mark - SPPageMenu的代理方法
- (void)pageMenu:(SPPageMenu *)pageMenu itemSelectedAtIndex:(NSInteger)index {
}
- (void)pageMenu:(SPPageMenu *)pageMenu itemSelectedFromIndex:(NSInteger)fromIndex toIndex:(NSInteger)toIndex {
    if (!self.SanXiaMyWorkerScrollView.isDragging) {
        if (labs(toIndex - fromIndex) >= 2) {
            [self.SanXiaMyWorkerScrollView setContentOffset:CGPointMake(SCREEN_Width * toIndex, 0) animated:NO];
        } else {
            [self.SanXiaMyWorkerScrollView setContentOffset:CGPointMake(SCREEN_Width * toIndex, 0) animated:YES];
        }
    }
    if (self.SanXiaMyWorkerClaaArrs.count <= toIndex) {return;}
    UIViewController *targetViewController = self.SanXiaMyWorkerClaaArrs[toIndex];
    if ([targetViewController isViewLoaded]) return;
    targetViewController.view.frame = CGRectMake(SCREEN_Width * toIndex, 0, SCREEN_Width, scrollViewHeight-NaviH-K(0));
    [_SanXiaMyWorkerScrollView addSubview:targetViewController.view];
}
- (UIScrollView *)SanXiaMyWorkerScrollView {
    if (!_SanXiaMyWorkerScrollView) {
        _SanXiaMyWorkerScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, GK_STATUSBAR_NAVBAR_HEIGHT+K(60), SCREEN_Width, scrollViewHeight-GK_STATUSBAR_NAVBAR_HEIGHT-K(0))];
        _SanXiaMyWorkerScrollView.delegate = self;
        _SanXiaMyWorkerScrollView.backgroundColor =  [UIColor whiteColor];
        _SanXiaMyWorkerScrollView.pagingEnabled = YES;
        _SanXiaMyWorkerScrollView.showsHorizontalScrollIndicator = NO;
        _SanXiaMyWorkerScrollView.showsVerticalScrollIndicator = NO;
    }
    return  _SanXiaMyWorkerScrollView;
}
-(void)SanXiaMyWorkerLoadClass{
    NSArray * ClassArr = @[@"HZZoneSecondSubViewController",@"HZZoneSecondSubViewController",@"HZZoneSecondPersonViewController"];
    for (int i = 0; i < self.SanXiaMyWorkerTagArr.count; i++) {
        HZZoneBaseViewController *baseVc = [NSClassFromString(ClassArr[i]) new];
        [self addChildViewController:baseVc];
        [self.SanXiaMyWorkerClaaArrs addObject:baseVc];
    }
    
    if (self.SanXiaMyWorkerMenu.selectedItemIndex < self.SanXiaMyWorkerTagArr.count) {
        HZZoneBaseViewController *baseVc = self.SanXiaMyWorkerClaaArrs[self.SanXiaMyWorkerMenu.selectedItemIndex];
        [self.SanXiaMyWorkerScrollView addSubview:baseVc.view];
        baseVc.view.frame = CGRectMake(SCREEN_Width*self.SanXiaMyWorkerMenu.selectedItemIndex, 0, SCREEN_Width, scrollViewHeight-GK_STATUSBAR_NAVBAR_HEIGHT);
        self.SanXiaMyWorkerScrollView .contentOffset = CGPointMake(SCREEN_Width*self.SanXiaMyWorkerMenu.selectedItemIndex, 0);
        self.SanXiaMyWorkerScrollView .contentSize = CGSizeMake(self.SanXiaMyWorkerTagArr.count*SCREEN_Width, 0);
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
