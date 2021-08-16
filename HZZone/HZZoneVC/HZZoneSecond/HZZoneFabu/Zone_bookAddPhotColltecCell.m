#import "Zone_bookAddPhotColltecCell.h"

@implementation Zone_bookAddPhotColltecCell
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        UIImageView * ZonePhtotImgView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, RealWidth(100), RealWidth(100))];
        ZonePhtotImgView.layer.cornerRadius = RealWidth(5);
        ZonePhtotImgView.layer.masksToBounds = YES;
        [self.contentView addSubview:ZonePhtotImgView];
        _ZonePhtotImgView = ZonePhtotImgView;
    }
    return self;
}
@end
