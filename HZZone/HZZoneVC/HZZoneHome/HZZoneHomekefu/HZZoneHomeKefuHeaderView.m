//
//  HZZoneHomeKefuHeaderView.m
//  HZZone
//
//  Created by codehzx on 2021/7/28.
//

#import "HZZoneHomeKefuHeaderView.h"
#import "HZZoneHeaderFirstTableViewCell.h"
#import "HZZoneHeaderSecondTableViewCell.h"
@interface HZZoneHomeKefuHeaderView ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong) UITableView * HZZoneKefuTableView;
@end
@implementation HZZoneHomeKefuHeaderView
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self addSubview:self.HZZoneKefuTableView];
    }
    return self;
}
-(void)layoutSubviews{
    _HZZoneKefuTableView.frame = self.bounds;
}
- (UITableView *)HZZoneKefuTableView{
    if (!_HZZoneKefuTableView) {
        _HZZoneKefuTableView = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
        _HZZoneKefuTableView.delegate = self;
        _HZZoneKefuTableView.dataSource = self;
        _HZZoneKefuTableView.showsVerticalScrollIndicator = NO;
        _HZZoneKefuTableView.showsHorizontalScrollIndicator = NO;
        _HZZoneKefuTableView.separatorStyle =  UITableViewCellSeparatorStyleNone;
        _HZZoneKefuTableView.backgroundColor = [UIColor clearColor];
        
    }
    return _HZZoneKefuTableView;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        HZZoneHeaderFirstTableViewCell * firstCell = [HZZoneHeaderFirstTableViewCell HZZoneCreateCellWithTheTableView:tableView WithTheIndexPath:indexPath];
        return firstCell;
    }else {
        HZZoneHeaderSecondTableViewCell * secondCell = [HZZoneHeaderSecondTableViewCell HZZoneCreateCellWithTheTableView:tableView WithTheIndexPath:indexPath];
        secondCell.backgroundColor = [UIColor redColor];
        return secondCell;
    }
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        return 80;
    }else{
        return 260;
    }
    return 0;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
