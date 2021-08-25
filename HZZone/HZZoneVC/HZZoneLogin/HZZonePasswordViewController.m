
#import "HZZonePasswordViewController.h"
@interface HZZonePasswordViewController ()
{
    UITextField * _GuoJiQihuoFindPasswordTextFiledPhones;
    UITextField * _GuoJiQihuoFindPasswordTextFiledCode;
    UITextField * _GuoJiQihuoFindPasswordTextFiledPassword;
    UIButton * _GuoJiQihuoFindPasswordTextFiledCodeBtn;
    UITextField * _GuoJiQihuoFindPasswordTextFiledSecond;
    NSTimer *    _GuoJiQihuoFindPasswordTextFiledTimers;
    NSInteger _GuoJiQihuoFindPasswordTextFiledNums;
    
}
@end

@implementation HZZonePasswordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navTitle = @"找回密码";
    _GuoJiQihuoFindPasswordTextFiledNums = 60;
    self.gk_navLineHidden = YES;
    UIImageView * GuoJiQihuoFindPasswordLogo = [[UIImageView alloc]initWithFrame:CGRectMake(SCREEN_Width/2-K(60), NaviH+K(40), K(120), K(120))];
    GuoJiQihuoFindPasswordLogo.backgroundColor = LGDMianColor;
    GuoJiQihuoFindPasswordLogo.image = [UIImage imageNamed:@"logo"];
    [self.view addSubview:GuoJiQihuoFindPasswordLogo];
    
    
    UIView * GuoJiQihuoFindPasswordlines = [[UIView alloc]initWithFrame:CGRectMake(K(25), CGRectGetMaxY(GuoJiQihuoFindPasswordLogo.frame)+K(100), SCREEN_Width-K(50), K(1))];
    GuoJiQihuoFindPasswordlines.backgroundColor =  LGDLightGaryColor;
    [self.view addSubview:GuoJiQihuoFindPasswordlines];
    
    
    UITextField * GuoJiQihuoFindPasswordTextFiledPhones = [[UITextField alloc]initWithFrame:CGRectMake(K(30), CGRectGetMaxY(GuoJiQihuoFindPasswordlines.frame)-K(40), SCREEN_Width-K(50), K(40))];
    GuoJiQihuoFindPasswordTextFiledPhones.textColor = LGDBLackColor;
    GuoJiQihuoFindPasswordTextFiledPhones.font = KBlFont(15);
    GuoJiQihuoFindPasswordTextFiledPhones.secureTextEntry =  NO;
    GuoJiQihuoFindPasswordTextFiledPhones.clearButtonMode = UITextFieldViewModeAlways;
    GuoJiQihuoFindPasswordTextFiledPhones.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"请输入手机号" attributes:@{NSFontAttributeName:KBlFont(15),NSForegroundColorAttributeName:LGDGaryColor}];
    [self.view addSubview:GuoJiQihuoFindPasswordTextFiledPhones];
    _GuoJiQihuoFindPasswordTextFiledPhones = GuoJiQihuoFindPasswordTextFiledPhones;
    
    
    
    UIView * GuoJiQihuoFindPasswordSecodlines = [[UIView alloc]initWithFrame:CGRectMake(K(25), CGRectGetMaxY(GuoJiQihuoFindPasswordlines.frame)+K(80), SCREEN_Width-K(50), K(1))];
    GuoJiQihuoFindPasswordSecodlines.backgroundColor =  LGDLightGaryColor;
    [self.view addSubview:GuoJiQihuoFindPasswordSecodlines];
    
    
    UITextField * GuoJiQihuoFindPasswordTextFiledSecond = [[UITextField alloc]initWithFrame:CGRectMake(K(30), CGRectGetMaxY(GuoJiQihuoFindPasswordSecodlines.frame)-K(40), SCREEN_Width-K(50+80), K(40))];
    GuoJiQihuoFindPasswordTextFiledSecond.textColor = LGDBLackColor;
    GuoJiQihuoFindPasswordTextFiledSecond.font = KBlFont(15);
    GuoJiQihuoFindPasswordTextFiledSecond.clearButtonMode = UITextFieldViewModeAlways;
    GuoJiQihuoFindPasswordTextFiledSecond.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"请输入验证码" attributes:@{NSFontAttributeName:KBlFont(15),NSForegroundColorAttributeName:LGDGaryColor}];
    [self.view addSubview:GuoJiQihuoFindPasswordTextFiledSecond];
    _GuoJiQihuoFindPasswordTextFiledSecond = GuoJiQihuoFindPasswordTextFiledSecond;
    
    
    
    UIButton * GuoJiQihuoFindPasswordTextFiledCodeBtn = [[UIButton alloc]initWithFrame:CGRectMake(CGRectGetMaxX(GuoJiQihuoFindPasswordTextFiledSecond.frame)+K(5), CGRectGetMaxY(GuoJiQihuoFindPasswordSecodlines.frame)-K(35), K(70), K(30))];
    [GuoJiQihuoFindPasswordTextFiledCodeBtn setTitle:@"获取验证码" forState:UIControlStateNormal];
    GuoJiQihuoFindPasswordTextFiledCodeBtn.titleLabel.font =  KSysFont(15);
    [GuoJiQihuoFindPasswordTextFiledCodeBtn addTarget:self action:@selector(GuoJiQihuoFindPasswordTextFiledCodeBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [GuoJiQihuoFindPasswordTextFiledCodeBtn setTitleColor:LGDMianColor forState:UIControlStateNormal];
    [self.view addSubview:GuoJiQihuoFindPasswordTextFiledCodeBtn];
    _GuoJiQihuoFindPasswordTextFiledCodeBtn = GuoJiQihuoFindPasswordTextFiledCodeBtn;
    
    
    
    
    
    UIView * GuoJiQihuoFindPasswordThreelins = [[UIView alloc]initWithFrame:CGRectMake(K(25), CGRectGetMaxY(GuoJiQihuoFindPasswordSecodlines.frame)+K(80), SCREEN_Width-K(50), K(1))];
    GuoJiQihuoFindPasswordThreelins.backgroundColor =  LGDLightGaryColor;
    [self.view addSubview:GuoJiQihuoFindPasswordThreelins];
    
    
    UITextField * GuoJiQihuoFindPasswordTextFiledPassword = [[UITextField alloc]initWithFrame:CGRectMake(K(30), CGRectGetMaxY(GuoJiQihuoFindPasswordThreelins.frame)-K(40), SCREEN_Width-K(50), K(40))];
    GuoJiQihuoFindPasswordTextFiledPassword.textColor = LGDBLackColor;
    GuoJiQihuoFindPasswordTextFiledPassword.font = KBlFont(15);
    GuoJiQihuoFindPasswordTextFiledPassword.clearButtonMode = UITextFieldViewModeAlways;
    GuoJiQihuoFindPasswordTextFiledPassword.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"请设置新的密码" attributes:@{NSFontAttributeName:KBlFont(15),NSForegroundColorAttributeName:LGDGaryColor}];
    [self.view addSubview:GuoJiQihuoFindPasswordTextFiledPassword];
    _GuoJiQihuoFindPasswordTextFiledPassword = GuoJiQihuoFindPasswordTextFiledPassword;
    
    
    UIView * GuoJiQihuoFindPasswordFivelines = [[UIView alloc]initWithFrame:CGRectMake(K(25), CGRectGetMaxY(GuoJiQihuoFindPasswordThreelins.frame)+K(80), SCREEN_Width-K(50), K(1))];
    GuoJiQihuoFindPasswordFivelines.backgroundColor =  LGDLightGaryColor;
    [self.view addSubview:GuoJiQihuoFindPasswordFivelines];
    
    UITextField * GuoJiQihuoFindPasswordTextFiledCode = [[UITextField alloc]initWithFrame:CGRectMake(K(30), CGRectGetMaxY(GuoJiQihuoFindPasswordFivelines.frame)-K(40), SCREEN_Width-K(50), K(40))];
    GuoJiQihuoFindPasswordTextFiledCode.textColor = LGDBLackColor;
    GuoJiQihuoFindPasswordTextFiledCode.font = KBlFont(15);
    GuoJiQihuoFindPasswordTextFiledCode.clearButtonMode = UITextFieldViewModeAlways;
    GuoJiQihuoFindPasswordTextFiledCode.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"请再次输入密码" attributes:@{NSFontAttributeName:KBlFont(15),NSForegroundColorAttributeName:LGDGaryColor}];
    [self.view addSubview:GuoJiQihuoFindPasswordTextFiledCode];
    _GuoJiQihuoFindPasswordTextFiledCode = GuoJiQihuoFindPasswordTextFiledCode;
    
    
    UIButton * GuoJiQihuoFindPasswordFindBtn = [[UIButton alloc]initWithFrame:CGRectMake(K(25), CGRectGetMaxY(GuoJiQihuoFindPasswordTextFiledCode.frame)+K(40), SCREEN_Width-K(50), K(40))];
    [GuoJiQihuoFindPasswordFindBtn  setBackgroundColor:LGDMianColor];
    GuoJiQihuoFindPasswordFindBtn.layer.cornerRadius = K(5);
    GuoJiQihuoFindPasswordFindBtn.layer.masksToBounds = YES;
    [GuoJiQihuoFindPasswordFindBtn addTarget:self action:@selector(GuoJiQihuoFindPasswordFindBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [GuoJiQihuoFindPasswordFindBtn  setTitle:@"找回密码" forState:UIControlStateNormal];
    [GuoJiQihuoFindPasswordFindBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    GuoJiQihuoFindPasswordFindBtn.titleLabel.font = KBlFont(18);
    GuoJiQihuoFindPasswordFindBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:GuoJiQihuoFindPasswordFindBtn];
    
    
}
-(void)GuoJiQihuoFindPasswordFindBtnClick{
    if (_GuoJiQihuoFindPasswordTextFiledPhones.text.length == 0) {
        [LCProgressHUD showInfoMsg:@"请输入手机号"];
        return;
    }
    if (_GuoJiQihuoFindPasswordTextFiledPhones.text.length != 11) {
        [LCProgressHUD showInfoMsg:@"请输入正确的手机号"];
        return;
    }
    if (_GuoJiQihuoFindPasswordTextFiledSecond.text.length == 0) {
        [LCProgressHUD showInfoMsg:@"请输入验证码"];
        return;
    }
    if (_GuoJiQihuoFindPasswordTextFiledSecond.text.length != 4) {
        [LCProgressHUD showInfoMsg:@"请输入正确的验证码"];
        return;
    }
    if (_GuoJiQihuoFindPasswordTextFiledPassword.text.length == 0) {
        [LCProgressHUD showInfoMsg:@"请设置密码"];
        return;
    }
    if (![_GuoJiQihuoFindPasswordTextFiledCode.text isEqualToString:_GuoJiQihuoFindPasswordTextFiledPassword.text]) {
        [LCProgressHUD showInfoMsg:@"密码不一致"];
        return;
    }
    [LCProgressHUD showLoading:@""];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [LCProgressHUD showInfoMsg:@"稍后重试"];
    });
    
}
-(void)GuoJiQihuoFindPasswordTextFiledCodeBtnClick{
    if (_GuoJiQihuoFindPasswordTextFiledPhones.text.length == 0) {
        [LCProgressHUD showInfoMsg:@"请输入手机号"];
        return;
    }
    if (_GuoJiQihuoFindPasswordTextFiledPhones.text.length != 11) {
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
    _GuoJiQihuoFindPasswordTextFiledCodeBtn.enabled = NO;
    [_GuoJiQihuoFindPasswordTextFiledCodeBtn setTitle:[NSString stringWithFormat:@"%lds后可重发",(long)_GuoJiQihuoFindPasswordTextFiledNums] forState:UIControlStateNormal];
    if (_GuoJiQihuoFindPasswordTextFiledNums == 0) {
        [_GuoJiQihuoFindPasswordTextFiledTimers invalidate];
        [_GuoJiQihuoFindPasswordTextFiledCodeBtn setTitle:[NSString stringWithFormat:@"重新获取"] forState:UIControlStateNormal];
        _GuoJiQihuoFindPasswordTextFiledCodeBtn.enabled = YES;
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








