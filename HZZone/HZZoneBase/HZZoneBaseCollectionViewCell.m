//
//  HZZoneBaseCollectionViewCell.m
//  HZZone
//
//  Created by codehzx on 2021/7/26.
//

#import "HZZoneBaseCollectionViewCell.h"

@implementation HZZoneBaseCollectionViewCell
+(id)HZZoneCreatTheCollectView:(UICollectionView *)collectView WithTheIndexPath:(NSIndexPath *)indexpath{
    NSString  *idenfier = NSStringFromClass([self classForCoder]);
    [collectView registerClass:[self classForCoder] forCellWithReuseIdentifier:idenfier];
    HZZoneBaseCollectionViewCell  *cell = [collectView dequeueReusableCellWithReuseIdentifier:idenfier forIndexPath:indexpath];
    return cell;
}
-(instancetype)initWithFrame:(CGRect)frame{
    if (self == [super initWithFrame:frame]) {
        [self HZZoneAddSubViews];
    }
    return  self;
}
-(void)HZZoneAddSubViews{
    
}
@end
