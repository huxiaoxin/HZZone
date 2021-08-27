

#import "HZZoneBaomingDetailViewController.h"
#import "UITextField+AddPlaceholder.h"
@interface HZZoneBaomingDetailViewController ()
@property(nonatomic,strong) UIButton    * HZZoneJiaruBtn;
@property(nonatomic,strong) UITextField * HZZoneJiaruTextField;
@property(nonatomic,strong) UITextField * HZZoneJiaruTextField1;
@property(nonatomic,strong) UITextField * HZZoneJiaruTextField2;
@property(nonatomic,strong) UITextField * HZZoneJiaruTextField3;
@end

@implementation HZZoneBaomingDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navTitle = @"报名详情";
    //
    UIView * HZZoneFirstViews = [[UIView alloc]initWithFrame:CGRectMake(0, NaviH+K(10), SCREEN_Width, K(80))];
    HZZoneFirstViews.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:HZZoneFirstViews];
    
    UIImageView * HZZoneThubimgViews =[[UIImageView alloc]initWithFrame:CGRectMake(K(15), K(10), K(60), K(60))];
    HZZoneThubimgViews.layer.cornerRadius = K(5);
    HZZoneThubimgViews.layer.masksToBounds = YES;
    [HZZoneFirstViews addSubview:HZZoneThubimgViews];
    [HZZoneThubimgViews sd_setImageWithURL:[NSURL URLWithString:self.hzzoneMoel.carpVideoThub]];
    UILabel * HZZoneThubTopTitle = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(HZZoneThubimgViews.frame)+K(10), K(10), SCREEN_Width-CGRectGetMaxX(HZZoneThubimgViews.frame)-K(20), K(60))];
    HZZoneThubTopTitle.numberOfLines =  0;
    HZZoneThubTopTitle.textColor = LGDLightBLackColor;
    HZZoneThubTopTitle.font = [UIFont systemFontOfSize:13];
    HZZoneThubTopTitle.text = self.hzzoneMoel.title;
    [HZZoneFirstViews addSubview:HZZoneThubTopTitle];
    
    
    
    UIView * HZZoneBtoDeepView = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(HZZoneFirstViews.frame)+K(10), SCREEN_Width, K(160))];
    HZZoneBtoDeepView.backgroundColor=  [UIColor whiteColor];
    [self.view addSubview:HZZoneBtoDeepView];
    
    
    UILabel * pandaRealNamelb=  [self carpVideoJbianjitexWittviaotsm:@"真实姓名:" lbFrame:CGRectMake(K(10), 0, K(100), K(40))];
    [HZZoneBtoDeepView addSubview:pandaRealNamelb];
    
    UITextField * HZZoneJiaruTextField = [self carpVideoJbianjitextFuekdWithHOkders:@"请输入真实姓名" FieldFrame:CGRectMake(CGRectGetMaxX(pandaRealNamelb.frame), 0, SCREEN_Width-CGRectGetMaxX(pandaRealNamelb.frame), K(40))];
    [HZZoneBtoDeepView addSubview:HZZoneJiaruTextField];
    _HZZoneJiaruTextField = HZZoneJiaruTextField;
    
    UILabel * pandaCompanylb=  [self carpVideoJbianjitexWittviaotsm:@"公司名称:" lbFrame:CGRectMake(K(10), CGRectGetMaxY(pandaRealNamelb.frame), K(100), K(40))];
    [HZZoneBtoDeepView addSubview:pandaCompanylb];
    
    UITextField * HZZoneJiaruTextField1 = [self carpVideoJbianjitextFuekdWithHOkders:@"请输入公司名称" FieldFrame:CGRectMake(CGRectGetMaxX(pandaRealNamelb.frame), CGRectGetMaxY(pandaRealNamelb.frame), SCREEN_Width-CGRectGetMaxX(pandaCompanylb.frame), K(40))];
    [HZZoneBtoDeepView addSubview:HZZoneJiaruTextField1];
    _HZZoneJiaruTextField1 = HZZoneJiaruTextField1;
    
    
    UILabel * pandaphonelb=  [self carpVideoJbianjitexWittviaotsm:@"联系电话:" lbFrame:CGRectMake(K(10), CGRectGetMaxY(pandaCompanylb.frame), K(100), K(40))];
    [HZZoneBtoDeepView addSubview:pandaphonelb];
    
    UITextField * HZZoneJiaruTextField2 = [self carpVideoJbianjitextFuekdWithHOkders:@"请输入手机号" FieldFrame:CGRectMake(CGRectGetMaxX(pandaCompanylb.frame), CGRectGetMaxY(pandaCompanylb.frame), SCREEN_Width-CGRectGetMaxX(pandaphonelb.frame), K(40))];
    [HZZoneBtoDeepView addSubview:HZZoneJiaruTextField2];
    _HZZoneJiaruTextField2 = HZZoneJiaruTextField2;
    
    
    UILabel * HZZoneBtoDeeplbhkdsadada=  [self carpVideoJbianjitexWittviaotsm:@"备注:" lbFrame:CGRectMake(K(10), CGRectGetMaxY(pandaphonelb.frame), K(100), K(40))];
    [HZZoneBtoDeepView addSubview:HZZoneBtoDeeplbhkdsadada];
    
    UITextField * HZZoneJiaruTextField3 = [self carpVideoJbianjitextFuekdWithHOkders:@"如有特殊需求可填写在这儿" FieldFrame:CGRectMake(CGRectGetMaxX(pandaphonelb.frame), CGRectGetMaxY(pandaphonelb.frame), SCREEN_Width-CGRectGetMaxX(HZZoneBtoDeeplbhkdsadada.frame), K(40))];
    [HZZoneBtoDeepView addSubview:HZZoneJiaruTextField3];
    _HZZoneJiaruTextField3=  HZZoneJiaruTextField3;
    
    
    
    [self.view addSubview:self.HZZoneJiaruBtn];
    // Do any additional setup after loading the view.
}
-(void)HZZoneJiaruBtnClick{
    if (_HZZoneJiaruTextField.text.length == 0) {
        [LCProgressHUD showInfoMsg:@"请填写真实姓名"];
        return;
    }
    if (_HZZoneJiaruTextField1.text.length == 0) {
        [LCProgressHUD showInfoMsg:@"请填写公司名称"];
        return;
    }
    if (_HZZoneJiaruTextField2.text.length == 0) {
        [LCProgressHUD showInfoMsg:@"请输入手机号"];
        return;
    }
    
    if (_HZZoneJiaruTextField2.text.length != 11) {
        [LCProgressHUD showInfoMsg:@"请输入正确的手机号"];
        return;
    }
    [LCProgressHUD showLoading:@""];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [LCProgressHUD showSuccess:@"报名成功，请注意查收手机短信"];
        [WHC_ModelSqlite update:[carpVideoAcitytyModel class] value:[NSString stringWithFormat:@"isBaoming ='%@'",@(YES)] where:[NSString stringWithFormat:@"LoactionID ='%ld'",self.hzzoneMoel.LoactionID]];
        [self.navigationController popToRootViewControllerAnimated:YES];
    });
}
- (UIButton *)HZZoneJiaruBtn{
    if (!_HZZoneJiaruBtn) {
        _HZZoneJiaruBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, SCREEN_Height-K(50), SCREEN_Width-K(0), K(50))];
        [_HZZoneJiaruBtn setBackgroundColor: LGDMianColor];
        [_HZZoneJiaruBtn setTitle:@"立即参与" forState:UIControlStateNormal];
        [_HZZoneJiaruBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _HZZoneJiaruBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
        _HZZoneJiaruBtn.titleLabel.font = [UIFont systemFontOfSize:K(15)];
        [_HZZoneJiaruBtn addTarget:self action:@selector(HZZoneJiaruBtnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _HZZoneJiaruBtn;
}

-(UILabel *)carpVideoJbianjitexWittviaotsm:(NSString *)titleStr lbFrame:(CGRect)lbFrame{
    NSString * configStr = [NSString stringWithFormat:@"  %@",titleStr];
    UILabel * lb = [[UILabel alloc]initWithFrame:lbFrame];
    lb.textColor = LGDLightBLackColor;
    NSTextAttachment  * attment = [[NSTextAttachment alloc]init];
    attment.image = [UIImage imageNamed:@"xiaoxihongdian"];
    attment.bounds = CGRectMake(0, 0, K(10), K(10));
    NSAttributedString * attbu = [NSAttributedString attributedStringWithAttachment:attment];
    NSMutableAttributedString * lbAttb  =[[NSMutableAttributedString alloc]initWithString:configStr];
    [lbAttb addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:14] range:NSMakeRange(0, configStr.length)];
    [lbAttb insertAttributedString:attbu atIndex:0];
    lb.attributedText = lbAttb;
    return lb;
}
-(UITextField *)carpVideoJbianjitextFuekdWithHOkders:(NSString *)holdStr FieldFrame:(CGRect)FieldFRame{
    
    UITextField * Filed = [[UITextField alloc]initWithFrame:FieldFRame];
    [Filed addPlaceholders:[UIFont systemFontOfSize:12] holderStr:holdStr holderColor:LGDGaryColor];
    Filed.textColor = LGDBLackColor;
    Filed.font = [UIFont systemFontOfSize:14];
    Filed.clearButtonMode = UITextFieldViewModeAlways;
    return Filed;
}
-(void)viewWillDisappear:(BOOL)animated{
    [[GKNavigationBarConfigure sharedInstance] updateConfigure:^(GKNavigationBarConfigure *configure) {
        configure.backStyle = GKNavigationBarBackStyleWhite;
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

