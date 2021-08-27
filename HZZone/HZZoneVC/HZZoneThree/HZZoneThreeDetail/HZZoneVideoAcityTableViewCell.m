#import "HZZoneVideoAcityTableViewCell.h"
@interface HZZoneVideoAcityTableViewCell ()
@property(nonatomic,strong) UIView * HZZoneContentViews;
@property(nonatomic,strong) UIImageView * HZZoneThubImgView;
@property(nonatomic,strong) UILabel     * HZZoneVideoToplb;
@property(nonatomic,strong) UILabel     * HZZoneVideoDetailb;
@property(nonatomic,strong) UIView      * HZZoneVideoGrenView;
@property(nonatomic,strong) UIView      * HZZoneVideoRedView;
@property(nonatomic,strong) UILabel     * HZZoneVideoGrenlb;
@property(nonatomic,strong) UILabel     * HZZoneVideoRedlb;
@property(nonatomic,strong) UILabel     * HZZonebtomlb;
@property(nonatomic,strong) UIButton    * HZZoneEnterBtn;
@end
@implementation HZZoneVideoAcityTableViewCell
-(void)setContentUI{
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.backgroundColor = [UIColor clearColor];
    [self.contentView addSubview:self.HZZoneContentViews];
    [_HZZoneContentViews addSubview:self.HZZoneThubImgView];
    [_HZZoneContentViews addSubview:self.HZZoneVideoToplb];
    [_HZZoneContentViews addSubview:self.HZZoneVideoDetailb];
    [_HZZoneContentViews addSubview:self.HZZoneVideoGrenView];
    [_HZZoneContentViews addSubview:self.HZZoneVideoRedView];
    [_HZZoneContentViews addSubview:self.HZZoneVideoGrenlb];
    [_HZZoneContentViews addSubview:self.HZZoneVideoRedlb];
    [_HZZoneContentViews addSubview:self.HZZonebtomlb];
    [_HZZoneContentViews addSubview:self.HZZoneEnterBtn];

    [_HZZoneContentViews mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(UIEdgeInsetsMake(RealWidth(5), RealWidth(10), RealWidth(10), RealWidth(10)));
    }];
    [_HZZoneThubImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.inset(RealWidth(15));
        make.size.mas_equalTo(CGSizeMake(RealWidth(120), RealWidth(100)));
    }];
    
    [_HZZoneVideoToplb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_HZZoneThubImgView.mas_right).offset(RealWidth(10));
        make.top.mas_equalTo(RealWidth(18));
    }];
    
    [_HZZoneVideoDetailb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_HZZoneThubImgView.mas_right).offset(RealWidth(10));
        make.top.mas_equalTo(_HZZoneVideoToplb.mas_bottom).offset(RealWidth(10));
    }];
    [_HZZoneVideoGrenView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_HZZoneThubImgView.mas_right).offset(RealWidth(10));
        make.top.mas_equalTo(_HZZoneVideoDetailb.mas_bottom).offset(RealWidth(20));
        make.size.mas_equalTo(CGSizeMake(RealWidth(4), RealWidth(4)));
    }];
    [_HZZoneVideoRedView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_HZZoneThubImgView.mas_right).offset(RealWidth(10));
        make.top.mas_equalTo(_HZZoneVideoGrenView.mas_bottom).offset(RealWidth(15));
        make.size.mas_equalTo(CGSizeMake(RealWidth(4), RealWidth(4)));
    }];
    
    [_HZZoneVideoGrenlb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_HZZoneVideoGrenView.mas_right).offset(RealWidth(5));
        make.centerY.mas_equalTo(_HZZoneVideoGrenView.mas_centerY);
        make.right.mas_equalTo(-RealWidth(5));
    }];
    
    [_HZZoneVideoRedlb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(_HZZoneVideoRedView.mas_right).offset(RealWidth(5));
        make.centerY.mas_equalTo(_HZZoneVideoRedView.mas_centerY);
        make.right.mas_equalTo(-RealWidth(5));
    }];
    
    [_HZZonebtomlb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(RealWidth(15));
        make.top.mas_equalTo(_HZZoneThubImgView.mas_bottom).offset(RealWidth(12));
    }];
    
    [_HZZoneEnterBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(-RealWidth(15));
        make.top.mas_equalTo(_HZZoneThubImgView.mas_bottom).offset(RealWidth(10));
        make.size.mas_equalTo(CGSizeMake(RealWidth(60), RealWidth(20)));
    }];
}
- (UIView *)HZZoneContentViews{
    if (!_HZZoneContentViews) {
        _HZZoneContentViews  = [UIView new];
        _HZZoneContentViews.layer.cornerRadius = RealWidth(5);
        _HZZoneContentViews.layer.masksToBounds = YES;
        _HZZoneContentViews.backgroundColor = [UIColor whiteColor];
    }
    return _HZZoneContentViews;
}
- (UIImageView *)HZZoneThubImgView{
    if (!_HZZoneThubImgView) {
        _HZZoneThubImgView = [UIImageView new];
        _HZZoneThubImgView.layer.cornerRadius = RealWidth(5);
        _HZZoneThubImgView.layer.masksToBounds = YES;
        _HZZoneThubImgView.contentMode =  UIViewContentModeScaleAspectFill;
        _HZZoneThubImgView.backgroundColor = LGDLightGaryColor;
    }
    return _HZZoneThubImgView;
}
- (UILabel *)HZZoneVideoToplb{
    if (!_HZZoneVideoToplb) {
        _HZZoneVideoToplb = [UILabel new];
        _HZZoneVideoToplb.textColor = LGDBLackColor;
        _HZZoneVideoToplb.font =  KBlFont(15);
        _HZZoneVideoToplb.text = @"爱上学习季";
    }
    return _HZZoneVideoToplb;
}
- (UILabel *)HZZoneVideoDetailb{
    if (!_HZZoneVideoDetailb) {
        _HZZoneVideoDetailb = [UILabel new];
        _HZZoneVideoDetailb.textColor = LGDGaryColor;
        _HZZoneVideoDetailb.font =  [UIFont systemFontOfSize:12];
        _HZZoneVideoDetailb.text = @"快闪CP * 心动狙击";
    }
    return _HZZoneVideoDetailb;
}
- (UIView *)HZZoneVideoGrenView{
    if (!_HZZoneVideoGrenView) {
        _HZZoneVideoGrenView = [UIView new];
        _HZZoneVideoGrenView.backgroundColor = [UIColor colorWithHexString:@"1167ef"];
        _HZZoneVideoGrenView.layer.cornerRadius = RealWidth(2);
        _HZZoneVideoGrenView.layer.masksToBounds = YES;
    }
    return _HZZoneVideoGrenView;
}
- (UIView *)HZZoneVideoRedView{
    if (!_HZZoneVideoRedView) {
        _HZZoneVideoRedView = [UIView new];
        _HZZoneVideoRedView.backgroundColor = LGDMianColor;
        _HZZoneVideoRedView.layer.cornerRadius = RealWidth(2);
        _HZZoneVideoRedView.layer.masksToBounds = YES;
    }
    return _HZZoneVideoRedView;
}
- (UILabel *)HZZoneVideoGrenlb{
    if (!_HZZoneVideoGrenlb) {
        _HZZoneVideoGrenlb = [UILabel new];
        _HZZoneVideoGrenlb.textColor = LGDLightBLackColor;
        _HZZoneVideoGrenlb.font =  [UIFont systemFontOfSize:12];
        _HZZoneVideoGrenlb.text = @"2020年2月3日～2月21日 12:54:12";
    }
    return _HZZoneVideoGrenlb;
}
- (UILabel *)HZZoneVideoRedlb{
    if (!_HZZoneVideoRedlb) {
        _HZZoneVideoRedlb = [UILabel new];
        _HZZoneVideoRedlb.textColor = LGDLightBLackColor;
        _HZZoneVideoRedlb.font =  [UIFont systemFontOfSize:12];
        _HZZoneVideoRedlb.text = @"上海市杨浦区宁国路百联滨江购物";
    }
    return _HZZoneVideoRedlb;
}
- (UILabel *)HZZonebtomlb{
    if (!_HZZonebtomlb) {
        _HZZonebtomlb = [UILabel new];
        _HZZonebtomlb.textColor = LGDLightBLackColor;
        _HZZonebtomlb.font =  [UIFont systemFontOfSize:12];
        _HZZonebtomlb.text = @"限2000人报名参加";
    }
    return _HZZonebtomlb;
}
- (UIButton *)HZZoneEnterBtn{
    if (!_HZZoneEnterBtn) {
        _HZZoneEnterBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_HZZoneEnterBtn  setBackgroundColor:LGDMianColor];
        [_HZZoneEnterBtn setTitle:@"参加活动" forState:UIControlStateNormal];
        [_HZZoneEnterBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _HZZoneEnterBtn.titleLabel.font = KBlFont(12);
        _HZZoneEnterBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
        _HZZoneEnterBtn.layer.cornerRadius = RealWidth(10);
        _HZZoneEnterBtn.layer.masksToBounds = YES;
        [_HZZoneEnterBtn addTarget:self action:@selector(HZZoneEnterBtnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _HZZoneEnterBtn;
}
- (void)setHzzModel:(carpVideoAcitytyModel *)hzzModel{
    _hzzModel = hzzModel;
    [_HZZoneThubImgView sd_setImageWithURL:[NSURL URLWithString:hzzModel.carpVideoThub] placeholderImage:[UIImage imageNamed:@"zhanweitu"]];
    _HZZoneVideoToplb.text =  hzzModel.title;
    _HZZoneVideoDetailb.text = hzzModel.titleDesc;
    _HZZoneVideoGrenlb.text = hzzModel.joinTime;
    _HZZoneVideoRedlb.text = hzzModel.loaction;
    _HZZonebtomlb.text = [NSString stringWithFormat:@"限%ld人报名参加",hzzModel.totalPersonNum];
}
-(void)HZZoneEnterBtnClick{
    [self.delegate HZZoneVideoAcityTableViewCellWithIndex:self.tag];
    
}
@end
    
