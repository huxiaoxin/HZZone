//
//  HZZoneSecondSenViewController.m
//  HZZone
//
//  Created by codehzx on 2021/8/14.
//

#import "HZZoneSecondSenViewController.h"
#import <ZWPlaceHolder/ZWPlaceHolder-umbrella.h>
#import <HUPhotoBrowser-umbrella.h>
#import <RITLPhotos/RITLPhotos.h>
#import "Zone_bookAddPhotColltecCell.h"
@interface HZZoneSecondSenViewController ()<UICollectionViewDelegate,UICollectionViewDataSource,RITLPhotosViewControllerDelegate,UINavigationControllerDelegate,UIImagePickerControllerDelegate>
@property(nonatomic,strong) UICollectionView * ZonePhotoCollteceView;
@property(nonatomic,strong) NSMutableArray * ZonePhotoDataArr;
@property(nonatomic,strong) UIImagePickerController *ZonePhotoDataPcers;
@property(nonatomic,strong) UIButton * ZonePhotoDataComeBtn;
@property(nonatomic,strong) UITextView * ZonePhotoDatatextView;

@end

@implementation HZZoneSecondSenViewController
-(NSMutableArray *)ZonePhotoDataArr{
    if (!_ZonePhotoDataArr) {
        _ZonePhotoDataArr = [[NSMutableArray alloc]init];
        [_ZonePhotoDataArr addObject:[UIImage imageNamed:@"tianjiatupian"]];
    }
    return _ZonePhotoDataArr;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.gk_navTitle = @"发布";
    self.gk_navLineHidden = YES;
    UIView * HZZoneClouseView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
    UIButton * HZZoneClouseBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [HZZoneClouseBtn setImage:[UIImage imageNamed:@"guanbi"] forState:UIControlStateNormal];
    [HZZoneClouseBtn setFrame:CGRectMake(15, 10, 18, 18)];
    [HZZoneClouseBtn addTarget:self action:@selector(HZZoneClouseBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [HZZoneClouseView addSubview:HZZoneClouseBtn];
    self.gk_navLeftBarButtonItem =[[UIBarButtonItem alloc]initWithCustomView:HZZoneClouseView];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    UILabel * ZonePhotoDatatTitile = [[UILabel alloc]initWithFrame:CGRectMake(RealWidth(15), NaviH+RealWidth(20), RealWidth(200), RealWidth(15))];
    ZonePhotoDatatTitile.textColor =  [UIColor blackColor];
    ZonePhotoDatatTitile.font = [UIFont boldSystemFontOfSize:13];
    ZonePhotoDatatTitile.text = @"编辑内容";
    [self.view addSubview:ZonePhotoDatatTitile];
    
    UIView * ZonePhotoDataChatView = [[UIView alloc]initWithFrame:CGRectMake(RealWidth(15), CGRectGetMaxY(ZonePhotoDatatTitile.frame)+RealWidth(20), SCREEN_Width-RealWidth(30), RealWidth(131))];
    ZonePhotoDataChatView.layer.cornerRadius = RealWidth(5);
    ZonePhotoDataChatView.layer.masksToBounds = YES;
    ZonePhotoDataChatView.layer.borderColor = [UIColor  colorWithHexString:@"#F8F9FA"].CGColor;
    ZonePhotoDataChatView.layer.borderWidth = RealWidth(2);
    [self.view addSubview:ZonePhotoDataChatView];
    
    UITextView * ZonePhotoDatatextView = [[UITextView alloc]initWithFrame:CGRectMake(RealWidth(15), RealWidth(15), CGRectGetWidth(ZonePhotoDataChatView.frame)-RealWidth(30), CGRectGetHeight(ZonePhotoDataChatView.frame)-RealWidth(30))];
    ZonePhotoDatatextView.zw_placeHolder = @"说点你想说的吧～";
    ZonePhotoDatatextView.zw_placeHolderColor =[UIColor colorWithHexString:@"#888888"];
    ZonePhotoDatatextView.font = [UIFont systemFontOfSize:14];
    [ZonePhotoDataChatView addSubview:ZonePhotoDatatextView];
    _ZonePhotoDatatextView = ZonePhotoDatatextView;
    
    
    UIView * ZonePhotoDatagartView = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(ZonePhotoDataChatView.frame)+RealWidth(30), SCREEN_Width, RealWidth(10))];
    ZonePhotoDatagartView.backgroundColor = LGDLightGaryColor;
    [self.view addSubview:ZonePhotoDatagartView];
    
    UILabel * ZonePhotoDatagBtommlb = [[UILabel alloc]initWithFrame:CGRectMake(RealWidth(15), CGRectGetMaxY(ZonePhotoDatagartView.frame)+RealWidth(40), RealWidth(200), RealWidth(15))];
    ZonePhotoDatagBtommlb.textColor =  [UIColor blackColor];
    ZonePhotoDatagBtommlb.font =[UIFont boldSystemFontOfSize:13];
    ZonePhotoDatagBtommlb.text = @"添加图片";
    [self.view addSubview:ZonePhotoDatagBtommlb];
    
    UICollectionViewFlowLayout * ZonePhotoDatagBLayout = [[UICollectionViewFlowLayout alloc]init];
    ZonePhotoDatagBLayout.sectionInset =  UIEdgeInsetsMake(0, RealWidth(15), 0, RealWidth(30));
    ZonePhotoDatagBLayout.itemSize  = CGSizeMake(RealWidth(100), RealWidth(100));
    UICollectionView * ZonePhotoDatagColltecView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(ZonePhotoDatagBtommlb.frame)+RealWidth(20), SCREEN_Width,RealWidth(200)) collectionViewLayout:ZonePhotoDatagBLayout];
    ZonePhotoDatagColltecView.delegate = self;
    ZonePhotoDatagColltecView.dataSource = self;
    ZonePhotoDatagColltecView.showsVerticalScrollIndicator = NO;
    ZonePhotoDatagColltecView.showsHorizontalScrollIndicator = NO;
    ZonePhotoDatagColltecView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:ZonePhotoDatagColltecView];
    [ZonePhotoDatagColltecView registerClass:[Zone_bookAddPhotColltecCell class] forCellWithReuseIdentifier:@"Zone_bookAddPhotColltecCell"];
    _ZonePhotoCollteceView = ZonePhotoDatagColltecView;
    
    UIButton * ZonePhotoDataComeBtn =  [[UIButton alloc]initWithFrame:CGRectMake(RealWidth(17), CGRectGetMaxY(ZonePhotoDatagColltecView.frame)+RealWidth(20), SCREEN_Width-RealWidth(35), RealWidth(44))];
    [ZonePhotoDataComeBtn setBackgroundColor:LGDMianColor];
    ZonePhotoDataComeBtn.titleLabel.font = [UIFont boldSystemFontOfSize:15];
    [ZonePhotoDataComeBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    ZonePhotoDataComeBtn.layer.cornerRadius = RealWidth(5);
    ZonePhotoDataComeBtn.layer.masksToBounds = YES;
    ZonePhotoDataComeBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
    [ZonePhotoDataComeBtn addTarget:self action:@selector(ZonePhotoDataComeBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [ZonePhotoDataComeBtn setTitle:@"提交" forState:UIControlStateNormal];
    [self.view addSubview:ZonePhotoDataComeBtn];
    _ZonePhotoDataComeBtn =ZonePhotoDataComeBtn;
    
    
}
#pragma mark-
-(void)ZonePhotoDataComeBtnClick{
    
    if (_ZonePhotoDatatextView.text.length == 0) {
        [LCProgressHUD showInfoMsg:@"说点什么吧～"];
        return;
    }
    //    if (![BaseLoginTool Zoneislogin]) {
    //        [self BaseShowLoginVC];
    //        return;
    //    }
    
    [LCProgressHUD showLoading:@""];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [LCProgressHUD showSuccess:@"Successful"];
        [self.navigationController popViewControllerAnimated:YES];
    });
    
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.ZonePhotoDataArr.count;
}
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    Zone_bookAddPhotColltecCell * ZonePhotoDatagCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Zone_bookAddPhotColltecCell" forIndexPath:indexPath];
    ZonePhotoDatagCell.ZonePhtotImgView.image = self.ZonePhotoDataArr[indexPath.row];
    return ZonePhotoDatagCell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    Zone_bookAddPhotColltecCell * ZonePhotoDatagCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Zone_bookAddPhotColltecCell" forIndexPath:indexPath];
    if (indexPath.row == self.ZonePhotoDataArr.count -1) {
        [self ZonePhotoDataVcs];
    }else{
        NSMutableArray * ZonePhotoDatagDtaArr = self.ZonePhotoDataArr;
        [ZonePhotoDatagDtaArr removeLastObject];
        [HUPhotoBrowser showFromImageView:ZonePhotoDatagCell.ZonePhtotImgView withImages:ZonePhotoDatagDtaArr atIndex:indexPath.row];
    }
    
}
- (void)photosViewController:(UIViewController *)viewController
                      images:(NSArray <UIImage *> *)images
                       infos:(NSArray <NSDictionary *> *)infos{
    [self.ZonePhotoDataArr addObjectsFromArray:images];
    MJWeakSelf;
    [self.ZonePhotoDataArr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        UIImage * ZonePhotoDataimgNme = (UIImage *)obj;
        if (ZonePhotoDataimgNme == [UIImage imageNamed:@"tianjiatupian"]) {
            [weakSelf.ZonePhotoDataArr removeObject:ZonePhotoDataimgNme];
            *stop = YES;
        }
    }];
    [self.ZonePhotoDataArr addObject:[UIImage imageNamed:@"tianjiatupian"]];
    [self.ZonePhotoCollteceView reloadData];
    self.ZonePhotoCollteceView.height = self.ZonePhotoCollteceView.collectionViewLayout.collectionViewContentSize.height;
    _ZonePhotoDataComeBtn.y  = CGRectGetMaxY(_ZonePhotoCollteceView.frame)+RealWidth(10);
}

-(UIImagePickerController *)ZonePhotoDataPcers{
    if (!_ZonePhotoDataPcers) {
        _ZonePhotoDataPcers = [[UIImagePickerController alloc] init];
        _ZonePhotoDataPcers.delegate = self;
        _ZonePhotoDataPcers.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
        _ZonePhotoDataPcers.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
        _ZonePhotoDataPcers.allowsEditing = YES;
    }
    return _ZonePhotoDataPcers;
}
-(void)ZonePhotoDataVcs{
    NSString *mediaType = AVMediaTypeVideo;
    AVAuthorizationStatus authStatus = [AVCaptureDevice authorizationStatusForMediaType:mediaType];
    if(authStatus == AVAuthorizationStatusRestricted || authStatus == AVAuthorizationStatusDenied){
        NSString *errorStr = @"App camera permission is restricted, please enable in settings";
        [LCProgressHUD showInfoMsg:errorStr];
        return;
    }
    RITLPhotosViewController *ZonePhotoDataVcs = RITLPhotosViewController.photosViewController;
    ZonePhotoDataVcs.configuration.maxCount = 5;
    ZonePhotoDataVcs.configuration.containVideo = false;
    ZonePhotoDataVcs.photo_delegate = self;
    [self presentViewController:ZonePhotoDataVcs animated:true completion:^{}];
}
-(void)HZZoneClouseBtnClick{
    [self dismissViewControllerAnimated:YES completion:nil];
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
