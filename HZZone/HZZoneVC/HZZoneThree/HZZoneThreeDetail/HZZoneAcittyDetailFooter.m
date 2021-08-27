#import "HZZoneAcittyDetailFooter.h"
@interface HZZoneAcittyDetailFooter ()
@property(nonatomic,strong) UIImageView * HZZoneTopImgView;
@property(nonatomic,strong) UILabel * HZZoneToplb;
@property(nonatomic,strong) UILabel * HZZoneLocatoinlb;
@property(nonatomic,strong) UILabel * HZZoneTimeslb;

@property(nonatomic,strong) UIImageView * HZZoneMoreImgView;
@property(nonatomic,strong) UILabel * HZZoneCenterlb;
@property(nonatomic,strong) UILabel * HZZoneCenterDetailb;


@property(nonatomic,strong) UIImageView * HZZoneBtomImgView;
@property(nonatomic,strong) UILabel     * HZZoneBtomIlbs;
@property(nonatomic,strong) UILabel     * HZZoneBtomIDetaillbs;

@end
@implementation HZZoneAcittyDetailFooter
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
        [self addSubview:self.HZZoneTopImgView];
        [self addSubview:self.HZZoneToplb];
        [self addSubview:self.HZZoneLocatoinlb];
        [self addSubview:self.HZZoneTimeslb];
        
        
        [self addSubview:self.HZZoneMoreImgView];
        [self addSubview:self.HZZoneCenterlb];
        [self addSubview:self.HZZoneCenterDetailb];
        
        
        [self addSubview:self.HZZoneBtomImgView];
        [self addSubview:self.HZZoneBtomIlbs];
        [self addSubview:self.HZZoneBtomIDetaillbs];
        
        
        [_HZZoneTopImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.top.inset(RealWidth(15));
            make.size.mas_equalTo(CGSizeMake(RealWidth(12), RealWidth(12)));
        }];
        [_HZZoneToplb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(_HZZoneTopImgView.mas_right).offset(RealWidth(5));
            make.centerY.mas_equalTo(_HZZoneTopImgView.mas_centerY);
        }];
        
        [_HZZoneLocatoinlb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.left.inset(RealWidth(15));
            make.top.mas_equalTo(_HZZoneTopImgView.mas_bottom).offset(RealWidth(20));
        }];
        
        [_HZZoneTimeslb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.left.inset(RealWidth(15));          make.top.mas_equalTo(_HZZoneLocatoinlb.mas_bottom).offset(RealWidth(10));
        }];
        
        [_HZZoneMoreImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.inset(RealWidth(15));
            make.top.mas_equalTo(_HZZoneTimeslb.mas_bottom).offset(RealWidth(20));
            make.size.mas_equalTo(CGSizeMake(RealWidth(12), RealWidth(12)));
        }];
        [_HZZoneCenterlb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(_HZZoneMoreImgView.mas_right).offset(RealWidth(5));
            make.centerY.mas_equalTo(_HZZoneMoreImgView.mas_centerY);
        }];
        
        [_HZZoneCenterDetailb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(RealWidth(30));
            make.top.mas_equalTo(_HZZoneCenterlb.mas_bottom).offset(RealWidth(15));
        }];
        
        [_HZZoneBtomImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.left.inset(RealWidth(15));
            make.top.mas_equalTo(_HZZoneCenterDetailb.mas_bottom).offset(RealWidth(20));
            make.size.mas_equalTo(CGSizeMake(RealWidth(12), RealWidth(12)));
            
        }];
        
        [_HZZoneBtomIlbs mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(_HZZoneBtomImgView.mas_right).offset(RealWidth(5));
            make.centerY.mas_equalTo(_HZZoneBtomImgView.mas_centerY);
        }];
        
        [_HZZoneBtomIDetaillbs mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.inset(RealWidth(30));
            make.right.inset(RealWidth(15));
            make.top.mas_equalTo(_HZZoneBtomIlbs.mas_bottom).offset(RealWidth(15));
        }];
    }
    return self;
}
- (void)setHzzoneModel:(carpVideoAcitytyModel *)hzzoneModel{
    _hzzoneModel = hzzoneModel;
    
    [_HZZoneLocatoinlb setText:[NSString stringWithFormat:@"   %@",hzzoneModel.loaction] textColor:LGDLightBLackColor appendingImg:@"dingwei" imgIndex:0 lineSpacing:RealWidth(3)];
    
    [_HZZoneTimeslb setText:[NSString stringWithFormat:@"   %@",hzzoneModel.joinTime] textColor:LGDLightBLackColor appendingImg:@"guaqi" imgIndex:0 lineSpacing:RealWidth(6)];
    
    [self setNeedsLayout];
    [self layoutIfNeeded];
    
    if (self.footerBlock) {
        self.footerBlock(CGRectGetMaxY(_HZZoneBtomIDetaillbs.frame)+RealWidth(10));
    }
    
}
- (UIImageView *)HZZoneTopImgView{
    if (!_HZZoneTopImgView) {
        _HZZoneTopImgView = [UIImageView new];
        _HZZoneTopImgView.image = [UIImage imageNamed:@"xuanzhong"];
    }
    return _HZZoneTopImgView;
}
- (UILabel *)HZZoneToplb{
    if (!_HZZoneToplb) {
        _HZZoneToplb = [UILabel new];
        _HZZoneToplb.textColor = LGDBLackColor;
        _HZZoneToplb.font = [UIFont boldSystemFontOfSize:14];
        _HZZoneToplb.text = @"活动时间及地点";
    }
    return _HZZoneToplb;
}
- (UILabel *)HZZoneLocatoinlb{
    if (!_HZZoneLocatoinlb) {
        _HZZoneLocatoinlb = [UILabel new];
        _HZZoneLocatoinlb.textColor = LGDLightBLackColor;
        _HZZoneLocatoinlb.font = [UIFont systemFontOfSize:13];
        _HZZoneLocatoinlb.numberOfLines = 0;
    }
    return _HZZoneLocatoinlb;
}
- (UILabel *)HZZoneTimeslb{
    if (!_HZZoneTimeslb) {
        _HZZoneTimeslb = [UILabel new];
        _HZZoneTimeslb.textColor = LGDLightBLackColor;
        _HZZoneTimeslb.font = [UIFont systemFontOfSize:13];
        _HZZoneTimeslb.numberOfLines = 0;
    }
    return _HZZoneTimeslb;
}
- (UIImageView *)HZZoneMoreImgView{
    if (!_HZZoneMoreImgView) {
        _HZZoneMoreImgView = [UIImageView new];
        _HZZoneMoreImgView.image = [UIImage imageNamed:@"xuanzhong"];
    }
    return _HZZoneMoreImgView;
}
- (UILabel *)HZZoneCenterlb{
    if (!_HZZoneCenterlb) {
        _HZZoneCenterlb = [UILabel new];
        _HZZoneCenterlb.textColor = LGDBLackColor;
        _HZZoneCenterlb.font = [UIFont boldSystemFontOfSize:14];
        _HZZoneCenterlb.text = @"活动对象";
    }
    return _HZZoneCenterlb;
}
- (UILabel *)HZZoneCenterDetailb{
    if (!_HZZoneCenterDetailb) {
        _HZZoneCenterDetailb = [UILabel new];
        _HZZoneCenterDetailb.textColor = LGDLightBLackColor;
        _HZZoneCenterDetailb.font = [UIFont systemFontOfSize:13];
        _HZZoneCenterDetailb.text = @"园区全体人员均可参加";
    }
    return _HZZoneCenterDetailb;
}
- (UIImageView *)HZZoneBtomImgView{
    if (!_HZZoneBtomImgView) {
        _HZZoneBtomImgView =  [UIImageView new];
        _HZZoneBtomImgView.image = [UIImage imageNamed:@"xuanzhong"];
    }
    return _HZZoneBtomImgView;
}
- (UILabel *)HZZoneBtomIlbs{
    if (!_HZZoneBtomIlbs) {
        _HZZoneBtomIlbs = [UILabel new];
        _HZZoneBtomIlbs.text = @"活动形式与流程";
        _HZZoneBtomIlbs.textColor = LGDBLackColor;
        _HZZoneBtomIlbs.font = [UIFont boldSystemFontOfSize:14];
    }
    return _HZZoneBtomIlbs;
    
}
- (UILabel *)HZZoneBtomIDetaillbs{
    if (!_HZZoneBtomIDetaillbs) {
        _HZZoneBtomIDetaillbs = [UILabel new];
        _HZZoneBtomIDetaillbs.textColor = LGDLightBLackColor;
        _HZZoneBtomIDetaillbs.font = [UIFont systemFontOfSize:13];
        
        _HZZoneBtomIDetaillbs.text = @"参会人员根据各班班长进行引领，依次有序通行会场，不得做一些脱离组织的行为，大会结束后可随意在会场自由活动";
        _HZZoneBtomIDetaillbs.numberOfLines = 0;
    }
    return _HZZoneBtomIDetaillbs;
}
-(UIImageView *)HZZoneViewIcoImgViewConfgers{
    UIImageView * hzzoneIconImgView = [UIImageView new];
    hzzoneIconImgView.image = [UIImage imageNamed:@"xuanzhong"];
    return hzzoneIconImgView;
}
/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

@end
