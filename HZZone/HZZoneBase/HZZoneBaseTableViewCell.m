//
//  HZZoneBaseTableViewCell.m
//  HZZone
//
//  Created by codehzx on 2021/7/26.
//

#import "HZZoneBaseTableViewCell.h"

@implementation HZZoneBaseTableViewCell
+(id)HZZoneCreateCellWithTheTableView:(UITableView *)tableView WithTheIndexPath:(NSIndexPath *)indexPath{
    NSString  *identifier = NSStringFromClass([self classForCoder]);
    [tableView registerClass:[self classForCoder] forCellReuseIdentifier:identifier];
    HZZoneBaseTableViewCell  *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    return  cell;
}
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectionStyle =  UITableViewCellSelectionStyleNone;
        self.backgroundColor = [UIColor clearColor];
        [self HZZoneAddSubViews];
    }
    return  self;
}
-(void)HZZoneAddSubViews{

}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
