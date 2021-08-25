//
//  HZZoneLoginViewController.m
//  HZZone
//
//  Created by codehzx on 2021/7/26.
//

#import "HZZoneLoginViewController.h"
#import "HZZonePasswordViewController.h"
@interface HZZoneLoginViewController ()
{
    NSTimer *    _GuoJiQihuoFindPasswordTextFiledTimers;
    NSInteger _GuoJiQihuoFindPasswordTextFiledNums;
    UIButton * _HZZoneSendCodeBtn;
    UIButton * _HzzoneStatusBtn;
}
@property(nonatomic,strong) UITextField * HZZonephoneTextField;
@property(nonatomic,strong) UITextField * HZZoneCodeTextField;
@end

@implementation HZZoneLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navLineHidden = YES;
    _GuoJiQihuoFindPasswordTextFiledNums = 60;
    UIView * backView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
    UIButton * backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [backBtn setImage:[UIImage imageNamed:@"guanbi"] forState:UIControlStateNormal];
    [backBtn setFrame:CGRectMake(18, 14, 15, 15)];
    [backBtn addTarget:self action:@selector(backBtnClicks) forControlEvents:UIControlEventTouchUpInside];
    [backView addSubview:backBtn];
    self.gk_navLeftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:backView];
    
    
    self.gk_navItemRightSpace = 15;
    UIButton * passwordBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [passwordBtn setTitle:@"找回密码" forState:UIControlStateNormal];
    passwordBtn.titleLabel.font = [UIFont boldSystemFontOfSize:13];
    [passwordBtn setTitleColor:LGDBLackColor forState:UIControlStateNormal];
    [passwordBtn addTarget:self action:@selector(passwordBtnClick) forControlEvents:UIControlEventTouchUpInside];
    self.gk_navRightBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:passwordBtn];
    
    
    
    UILabel * HZZonePhonelb = [[UILabel alloc]initWithFrame:CGRectMake(18, GK_STATUSBAR_NAVBAR_HEIGHT+40, GK_SCREEN_WIDTH-30, 18)];
    HZZonePhonelb.textColor = LGDBLackColor;
    HZZonePhonelb.font = [UIFont boldSystemFontOfSize:20];
    HZZonePhonelb.text = @"手机号码快捷登录";
    [self.view addSubview:HZZonePhonelb];
    
    UILabel * HZZoneTpislb = [[UILabel alloc]initWithFrame:CGRectMake(18, CGRectGetMaxY(HZZonePhonelb.frame)+5, GK_SCREEN_WIDTH-30, 15)];
    HZZoneTpislb.textColor = LGDGaryColor;
    HZZoneTpislb.font = [UIFont systemFontOfSize:11];
    HZZoneTpislb.text = @"未注册的手机号将自动注册";
    [self.view addSubview:HZZoneTpislb];

    
    
    UILabel * HZZonePhoneNumlb = [[UILabel alloc]initWithFrame:CGRectMake(18, CGRectGetMaxY(HZZoneTpislb.frame)+80, GK_SCREEN_WIDTH-30, 15)];
    HZZonePhoneNumlb.textColor = LGDBLackColor;
    HZZonePhoneNumlb.font = [UIFont boldSystemFontOfSize:15];
    HZZonePhoneNumlb.text = @"手机号码";
    [self.view addSubview:HZZonePhoneNumlb];

    UITextField * HZZonephoneTextField = [[UITextField alloc]initWithFrame:CGRectMake(18, CGRectGetMaxY(HZZonePhoneNumlb.frame)+10, GK_SCREEN_WIDTH-36, 40)];
    HZZonephoneTextField.textColor = LGDBLackColor;
    HZZonephoneTextField.font = [UIFont boldSystemFontOfSize:15];
    [HZZonephoneTextField addPlaceholders:[UIFont systemFontOfSize:11] holderStr:@"请输入您的手机号" holderColor:LGDGaryColor];
    HZZonephoneTextField.keyboardType = UIKeyboardTypePhonePad;
    HZZonephoneTextField.clearButtonMode = UITextFieldViewModeAlways;
    [self.view addSubview:HZZonephoneTextField];
    _HZZonephoneTextField = HZZonephoneTextField;
    
    UIView * HzzonePhoneLine = [[UIView alloc]initWithFrame:CGRectMake(18, CGRectGetMaxY(HZZonephoneTextField.frame)+0, GK_SCREEN_WIDTH-36, 0.5)];
    HzzonePhoneLine.backgroundColor = LGDGaryColor;
    [self.view addSubview:HzzonePhoneLine];
    
    UILabel * HZZoneCodeNumlb = [[UILabel alloc]initWithFrame:CGRectMake(18, CGRectGetMaxY(HzzonePhoneLine.frame)+20, GK_SCREEN_WIDTH-30, 15)];
    HZZoneCodeNumlb.textColor = LGDBLackColor;
    HZZoneCodeNumlb.font = [UIFont boldSystemFontOfSize:15];
    HZZoneCodeNumlb.text = @"验证码";
    [self.view addSubview:HZZoneCodeNumlb];

    UITextField * HZZoneCodeTextField = [[UITextField alloc]initWithFrame:CGRectMake(18, CGRectGetMaxY(HZZoneCodeNumlb.frame)+10, GK_SCREEN_WIDTH-36-100, 40)];
    HZZoneCodeTextField.textColor = LGDBLackColor;
    HZZoneCodeTextField.font = [UIFont boldSystemFontOfSize:15];
    [HZZoneCodeTextField addPlaceholders:[UIFont systemFontOfSize:11] holderStr:@"请输入验证码" holderColor:LGDGaryColor];
    HZZoneCodeTextField.keyboardType = UIKeyboardTypePhonePad;
    HZZoneCodeTextField.clearButtonMode = UITextFieldViewModeAlways;
    [self.view addSubview:HZZoneCodeTextField];
    _HZZoneCodeTextField = HZZoneCodeTextField;
    
    UIView * HzzoneCodeLine = [[UIView alloc]initWithFrame:CGRectMake(18, CGRectGetMaxY(HZZoneCodeTextField.frame)+0, GK_SCREEN_WIDTH-36, 0.1)];
    HzzoneCodeLine.backgroundColor = LGDGaryColor;
    [self.view addSubview:HzzoneCodeLine];

    UIButton * HZZoneSendCodeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [HZZoneSendCodeBtn setFrame:CGRectMake(CGRectGetMaxX(HZZoneCodeTextField.frame)+10, CGRectGetMaxY(HzzoneCodeLine.frame)-40, 80, 35)];
    [HZZoneSendCodeBtn setBackgroundColor:LGDMianColor];
    HZZoneSendCodeBtn.layer.cornerRadius = 5;
    HZZoneSendCodeBtn.layer.masksToBounds = YES;
    [HZZoneSendCodeBtn setTitle:@"发送验证码" forState:UIControlStateNormal];
    HZZoneSendCodeBtn.titleLabel.font =[UIFont systemFontOfSize:12];
    HZZoneSendCodeBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
    [HZZoneSendCodeBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [HZZoneSendCodeBtn addTarget:self action:@selector(HZZoneSendCodeBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:HZZoneSendCodeBtn];
    _HZZoneSendCodeBtn = HZZoneSendCodeBtn;
    
    
    UIButton * HZZoneLoginBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [HZZoneLoginBtn setFrame:CGRectMake(18, CGRectGetMaxY(HzzoneCodeLine.frame)+40, GK_SCREEN_WIDTH-36, 45)];
    [HZZoneLoginBtn setBackgroundColor:LGDMianColor];
    HZZoneLoginBtn.layer.cornerRadius = 5;
    HZZoneLoginBtn.layer.masksToBounds = YES;
    [HZZoneLoginBtn addTarget:self action:@selector(HZZoneLoginBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [HZZoneLoginBtn setTitle:@"登录" forState:UIControlStateNormal];
    HZZoneLoginBtn.titleLabel.font =[UIFont boldSystemFontOfSize:15];
    HZZoneLoginBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
    [HZZoneLoginBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.view addSubview:HZZoneLoginBtn];

    
    
    CGSize HzzoneProtoclSize = [@"登录/注册即代表您同意《用户协议》" cxl_sizeWithString:[UIFont systemFontOfSize:12]];
    UILabel * HZZoneProtolb = [[UILabel alloc]initWithFrame:CGRectMake(GK_SCREEN_WIDTH/2-HzzoneProtoclSize.width/2+20, GK_SCREEN_HEIGHT-GK_SAFEAREA_BTM-30, HzzoneProtoclSize.width, 14)];
    HZZoneProtolb.text = @"登录/注册即代表您同意《用户协议》";
    HZZoneProtolb.textColor = LGDGaryColor;
    HZZoneProtolb.font = [UIFont systemFontOfSize:12];
    [self.view addSubview:HZZoneProtolb];
    
    UIButton * HzzoneStatusBtn  =[UIButton buttonWithType:UIButtonTypeCustom];
    [HzzoneStatusBtn setImage:[UIImage imageNamed:@"shoucang-nomal"] forState:UIControlStateNormal];
    [HzzoneStatusBtn setImage:[UIImage imageNamed:@"shoucang_seltecd"] forState:UIControlStateSelected];
    [HzzoneStatusBtn addTarget:self action:@selector(HzzoneStatusBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [HzzoneStatusBtn setFrame:CGRectMake(CGRectGetMinX(HZZoneProtolb.frame)-15, CGRectGetMidY(HZZoneProtolb.frame)-7, 14, 14)];
    [self.view addSubview:HzzoneStatusBtn];
    _HzzoneStatusBtn = HzzoneStatusBtn;
    
    // Do any additional setup after loading the view.
}
-(void)HzzoneStatusBtnClick:(UIButton *)statusBtn{
    statusBtn.selected = !statusBtn.selected;
}
-(void)backBtnClicks{
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(void)passwordBtnClick{
    HZZonePasswordViewController * pasawordVc = [[HZZonePasswordViewController alloc]init];
    pasawordVc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:pasawordVc animated:YES];
}
-(void)HZZoneSendCodeBtnClick{
    if (_HZZonephoneTextField.text.length == 0) {
        [LCProgressHUD showInfoMsg:@"请输入手机号"];
        return;
    }
    if (_HZZonephoneTextField.text.length != 11) {
        [LCProgressHUD showInfoMsg:@"请输入正确的手机号"];
        return;
    }
    [LCProgressHUD showLoading:@""];
    
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [LCProgressHUD showSuccess:@"发送成功"];
        self->_GuoJiQihuoFindPasswordTextFiledTimers = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(GuoJiQihuoFindCodeActoinns) userInfo:nil repeats:YES];
        [self->_GuoJiQihuoFindPasswordTextFiledTimers fire];

    });
}
-(void)GuoJiQihuoFindCodeActoinns{
    _GuoJiQihuoFindPasswordTextFiledNums--;
    _HZZoneSendCodeBtn.enabled = NO;
    [_HZZoneSendCodeBtn setTitle:[NSString stringWithFormat:@"%lds后可重发",(long)_GuoJiQihuoFindPasswordTextFiledNums] forState:UIControlStateNormal];
    if (_GuoJiQihuoFindPasswordTextFiledNums == 0) {
        [_GuoJiQihuoFindPasswordTextFiledTimers invalidate];
        [_HZZoneSendCodeBtn setTitle:[NSString stringWithFormat:@"重新获取"] forState:UIControlStateNormal];
        _HZZoneSendCodeBtn.enabled = YES;
    }
}
-(void)HZZoneLoginBtnClick{
    if (_HZZonephoneTextField.text.length == 0) {
        [LCProgressHUD showInfoMsg:@"请输入手机号"];
        return;
    }
    if (_HZZonephoneTextField.text.length != 11) {
        [LCProgressHUD showInfoMsg:@"请输入正确的手机号"];
        return;
    }

    if (_HZZoneCodeTextField.text.length == 0) {
        [LCProgressHUD showInfoMsg:@"请输入验证码"];
        return;
    }
    if (_HzzoneStatusBtn.selected == NO ) {
        [LCProgressHUD showInfoMsg:@"请同意用户使用协议"];
        return;
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
