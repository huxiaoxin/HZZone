//
//  HZZoneFiveViewController.m
//  HZZone
//
//  Created by codehzx on 2021/7/26.
//

#import "HZZoneFiveViewController.h"
#import "HZZoneItemView.h"
#import "HZZoneVerticalView.h"
#import "HZZoneVerticalOldView.h"
@interface HZZoneFiveViewController ()

@end

@implementation HZZoneFiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navLineHidden = YES;
    self.gk_navTitle = @"我的";
    HZZoneItemView * hzzoneFirst = [[HZZoneItemView alloc]initWithFrame:CGRectMake(15, GK_STATUSBAR_NAVBAR_HEIGHT+15, GK_SCREEN_WIDTH/2-25, 100)];
    hzzoneFirst.tag =0;
    [self.view addSubview:hzzoneFirst];
    
    UITapGestureRecognizer * infoTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(infoTapClick:)];
    [hzzoneFirst addGestureRecognizer:infoTap];
    
    HZZoneItemView * hzzoneSecond = [[HZZoneItemView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(hzzoneFirst.frame)+15, GK_STATUSBAR_NAVBAR_HEIGHT+15, GK_SCREEN_WIDTH/2-25, 100)];
    hzzoneSecond.tag = 1;
    [self.view addSubview:hzzoneSecond];
    UITapGestureRecognizer * infoTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(infoTapClick:)];
    [hzzoneSecond addGestureRecognizer:infoTap1];

    
    HZZoneItemView * hzzoneTree = [[HZZoneItemView alloc]initWithFrame:CGRectMake(15, CGRectGetMaxY(hzzoneFirst.frame)+15, GK_SCREEN_WIDTH/2-25, 100)];
    hzzoneTree.tag = 2;
    [self.view addSubview:hzzoneTree];
    
    UITapGestureRecognizer * infoTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(infoTapClick:)];
    [hzzoneTree addGestureRecognizer:infoTap2];


    HZZoneItemView * hzzoneFoure = [[HZZoneItemView alloc]initWithFrame:CGRectMake(15+CGRectGetMaxX(hzzoneTree.frame), CGRectGetMaxY(hzzoneFirst.frame)+15, GK_SCREEN_WIDTH/2-25, 100)];
    hzzoneFoure.tag = 3;
    [self.view addSubview:hzzoneFoure];
    UITapGestureRecognizer * infoTap3 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(infoTapClick:)];
    [hzzoneFoure addGestureRecognizer:infoTap3];



    HZZoneVerticalView * hzzoneVeticvalView = [[HZZoneVerticalView alloc]initWithFrame:CGRectMake(15, CGRectGetMaxY(hzzoneTree.frame)+15, GK_SCREEN_WIDTH-30, 60)];
    hzzoneVeticvalView.tag =4;
    [self.view addSubview:hzzoneVeticvalView];
    
    UITapGestureRecognizer * infoTap4 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(infoTapClick:)];
    [hzzoneVeticvalView addGestureRecognizer:infoTap4];

    
    HZZoneVerticalOldView * hzzoneOldView = [[HZZoneVerticalOldView alloc]initWithFrame:CGRectMake(15, CGRectGetMaxY(hzzoneVeticvalView.frame)+15, GK_SCREEN_WIDTH-30, 60)];
    hzzoneOldView.tag = 5;
    [self.view addSubview:hzzoneOldView];
    
    UITapGestureRecognizer * infoTap5 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(infoTapClick:)];
    [hzzoneOldView addGestureRecognizer:infoTap5];
    
    
    HZZoneItemView * hzzoneFive = [[HZZoneItemView alloc]initWithFrame:CGRectMake(15, CGRectGetMaxY(hzzoneOldView.frame)+15, GK_SCREEN_WIDTH/2-25, 100)];
    hzzoneFive.tag = 6;
    [self.view addSubview:hzzoneFive];
    UITapGestureRecognizer * infoTap6 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(infoTapClick:)];
    [hzzoneFive addGestureRecognizer:infoTap6];

    
    HZZoneItemView * hzzoneSix = [[HZZoneItemView alloc]initWithFrame:CGRectMake(15+CGRectGetMaxX(hzzoneFive.frame), CGRectGetMaxY(hzzoneOldView.frame)+15, GK_SCREEN_WIDTH/2-25, 100)];
    hzzoneSix.tag =  7;
    [self.view addSubview:hzzoneSix];
    
    UITapGestureRecognizer * infoTap7 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(infoTapClick:)];
    [hzzoneSix addGestureRecognizer:infoTap7];

    
    // Do any additional setup after loading the view.
}
-(void)infoTapClick:(UITapGestureRecognizer *)tap{
    
    UIView * view = [tap view];
    NSLog(@"%ld",view.tag);
//    [self HZZoneShowLoginVc];
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
