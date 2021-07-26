//
//  HZZoneBaseCollectionViewCell.h
//  HZZone
//
//  Created by codehzx on 2021/7/26.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HZZoneBaseCollectionViewCell : UICollectionViewCell
+(id)HZZoneCreatTheCollectView:(UICollectionView *)collectView WithTheIndexPath:(NSIndexPath *)indexpath;
-(void)HZZoneAddSubViews;

@end

NS_ASSUME_NONNULL_END
