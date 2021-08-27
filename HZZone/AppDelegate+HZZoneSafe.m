
#import "AppDelegate+HZZoneSafe.h"
#import "carpVideoAcitytyModel.h"
@implementation AppDelegate (HZZoneSaf)
+(void)AppDelegateConfiguartionsafe{
    [self hzzoneActityModelConfigers];
}
+(void)hzzoneActityModelConfigers{
    NSMutableArray * PandaTempArr  =[NSMutableArray array];
    carpVideoAcitytyModel * hzzoneItem =[[carpVideoAcitytyModel alloc]init];
    hzzoneItem.preogrese = 0.6;
    hzzoneItem.lastPersonNum = 123;
    hzzoneItem.totalPersonNum = 300;
    hzzoneItem.coinNum = 4;
    hzzoneItem.ComentCoinNum =  6.7;
    hzzoneItem.isBaoming = YES;
    hzzoneItem.imgArrs = @[@"https://img2.doubanio.com/view/page_note/large/public/p106945151-1.jpg",@"https://img2.doubanio.com/view/page_note/large/public/p106945151-2.jpg"];
    hzzoneItem.carpVideoThub = @"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2504646738.jpg";
    hzzoneItem.title = @"原创话剧《林则徐》";
    hzzoneItem.titleDesc =@"戏剧-话剧";
    hzzoneItem.DetailDesc = @"国家大剧院与广州话剧艺术中心精心组织筹划，创作团队先后赴林则徐工作和生活过的虎门、伊犁、北京、福州、蒲城等多地采风，收集和查阅了丰富的史料，采访了众多专家学者。主创主演团队汇聚了一批国内优秀创作人才，编剧郭启宏、导演王筱頔、舞美设计季乔、作曲赵季平、灯光设计邢辛、服装造型设计陈同勋、多媒体设计胡天骥以及编舞黄豆豆，共筑那段蹒跚却又充满力量的历史。";
    hzzoneItem.tageOne = @"鸦片流毒";
    hzzoneItem.tagTwo = @"林则徐";
    hzzoneItem.isStart = NO;
    hzzoneItem.isCollted = YES;
    hzzoneItem.colltecdNum =43;
    hzzoneItem.joinTime = @"06月20日 周六 19:30-21:30 至 05月232日 周日 19:30-21:30";
    hzzoneItem.playTime = @"06月22日 周六 19:30-21:30 至 05月23日 周日 19:30-21:30";
    hzzoneItem.loaction = @"北京市东城区王府井大街255号北京市百货大楼F8";
    hzzoneItem.phone = @"(010)65234366";
    hzzoneItem.LoactionID = 0;
    [PandaTempArr addObject:hzzoneItem];
    
    
    
    
    carpVideoAcitytyModel * hzzoneItem1 =[[carpVideoAcitytyModel alloc]init];
    hzzoneItem1.preogrese = 0.4;
    hzzoneItem1.lastPersonNum = 321;
    hzzoneItem1.totalPersonNum = 400;
    hzzoneItem1.coinNum = 5;
    hzzoneItem1.ComentCoinNum =  7.3;
    hzzoneItem1.isBaoming = NO;
    hzzoneItem1.imgArrs = @[@"https://img2.doubanio.com/view/page_note/large/public/p100194143-1.jpg",@"https://img2.doubanio.com/view/page_note/large/public/p100194143-2.jpg",@"https://img2.doubanio.com/view/page_note/large/public/p100194143-3.jpg"];
    hzzoneItem1.carpVideoThub = @"https://img3.doubanio.com/pview/event_poster/plarge/public/c1744281a5d5030.jpg";
    hzzoneItem1.title = @"零基础组乐队|实现你的音乐梦！";
    hzzoneItem1.titleDesc =@"聚会-生活";
    hzzoneItem1.DetailDesc = @"这个周末大咖乐手一线音乐人与你一起嗨只要有一颗热爱音乐心和上台表演的冲动乐队四大乐器任你选择现场教你、现场排练、现场演出让你体验一把乐手的感觉完成人生的第一次乐队之行";
    hzzoneItem1.tageOne = @"A伙伴";
    hzzoneItem1.tagTwo = @"交友";
    hzzoneItem1.isStart = NO;
    hzzoneItem1.isCollted = NO;
    hzzoneItem1.colltecdNum =21;
    hzzoneItem1.joinTime = @"6/20 10:30:00 至 6/30 12:00:00";
    hzzoneItem1.playTime = @"6/26 12:30:00 至 5/7 12:00:00";
    hzzoneItem1.loaction = @"北京市东城区香河园路1号当代MOMA北区T4座";
    hzzoneItem1.phone = @"(010)84388257";
    hzzoneItem1.LoactionID = 1;
    [PandaTempArr addObject:hzzoneItem1];
    
    
    
    carpVideoAcitytyModel * hzzoneItem2 =[[carpVideoAcitytyModel alloc]init];
    hzzoneItem2.preogrese = 0.3;
    hzzoneItem2.lastPersonNum = 121;
    hzzoneItem2.totalPersonNum = 400;
    hzzoneItem2.ComentCoinNum =  6.8;
    hzzoneItem2.coinNum = 3;
    hzzoneItem2.isBaoming = NO;
    hzzoneItem2.imgArrs = @[@"https://img2.doubanio.com/view/page_note/large/public/p100867674-1.jpg",@"https://img2.doubanio.com/view/page_note/large/public/p100867674-2.jpg",@"https://img2.doubanio.com/view/page_note/large/public/p100867674-3.jpg"];
    hzzoneItem2.carpVideoThub = @"https://img2.doubanio.com/pview/event_poster/plarge/public/0fdbf14d714724e.jpg";
    hzzoneItem2.title = @"提升即兴表达，演讲技能，并认识一些优秀的朋友 ";
    hzzoneItem2.titleDesc =@"聚会-交友";
    hzzoneItem2.DetailDesc = @"技能分享趴是一个终身学习组织，创建初衷是为了聚集各行各业优秀的人，'相互分享，终身学习'是组织的核心理念所以每月都会举办和知识，技能相关的分享活动";
    hzzoneItem2.tageOne = @"戏剧";
    hzzoneItem2.tagTwo = @"家客";
    hzzoneItem2.isStart = NO;
    hzzoneItem2.isCollted = NO;
    hzzoneItem2.colltecdNum =39;
    hzzoneItem2.joinTime = @"6/27 11:20:00 至 5/30 10:30:00";
    hzzoneItem2.playTime = @"6/28 10:00:00 至 6/1 24:00:00";
    hzzoneItem2.loaction = @"北京市通州区芙蓉园513号楼2至3层";
    hzzoneItem2.phone = @"(010)80850020";
    hzzoneItem2.LoactionID = 2;
    [PandaTempArr addObject:hzzoneItem2];
    
    
    
    carpVideoAcitytyModel * hzzoneItem3 =[[carpVideoAcitytyModel alloc]init];
    hzzoneItem3.preogrese = 0.6;
    hzzoneItem3.lastPersonNum = 41;
    hzzoneItem3.totalPersonNum = 100;
    hzzoneItem3.ComentCoinNum =  8.4;
    hzzoneItem3.coinNum = 4;
    hzzoneItem3.isBaoming = NO;
    hzzoneItem3.imgArrs = @[@"https://img2.doubanio.com/view/page_note/large/public/p102226414-2.jpg"];
    hzzoneItem3.carpVideoThub = @"https://img2.doubanio.com/pview/event_poster/plarge/public/aca913e49629063.jpg";
    hzzoneItem3.title = @"北京站 | 视觉剧场《气》之迈入多感官体验的新世界 | 2021暖春专场";
    hzzoneItem3.titleDesc =@"戏剧-舞剧";
    hzzoneItem3.DetailDesc = @"视觉剧场作品《气》取材自形声意一体的象形文字“氣”的概念与意象，亦由此延伸。气是中国传统哲学中一切实体的生命能量，也是使天地间事物流动变化的动力。该剧基于对“气”这一概念的认知，对剧场中的听觉、视觉、嗅觉进行重构。精微的动作、身体和物品互动形成的画面、材料在流动中发出的声音、蒸饭所散发的香气等多种元素相互配合，共同在空间中勾勒出一幅视听景观。";
    hzzoneItem3.tageOne = @"安妮宝贝";
    hzzoneItem3.tagTwo = @"";
    hzzoneItem3.isStart = NO;
    hzzoneItem3.isCollted = NO;
    hzzoneItem3.colltecdNum =14;
    hzzoneItem3.joinTime = @"5/1 12:00:00 至 5/5 12:00:00";
    hzzoneItem3.playTime = @"5/8 10:12:00 至 5/15 10:20:00";
    hzzoneItem3.loaction = @"北京市通州区芙蓉园513号楼2至3层";
    hzzoneItem3.phone = @"(010)80850020";
    hzzoneItem3.LoactionID = 3;
    [PandaTempArr addObject:hzzoneItem3];
    
    
    carpVideoAcitytyModel * hzzoneItem4 =[[carpVideoAcitytyModel alloc]init];
    hzzoneItem4.preogrese = 0.2;
    hzzoneItem4.lastPersonNum = 579;
    hzzoneItem4.totalPersonNum = 1200;
    hzzoneItem4.ComentCoinNum =  7.5;
    hzzoneItem4.coinNum = 5;
    hzzoneItem4.isBaoming = NO;
    hzzoneItem4.imgArrs = @[@"https://img2.doubanio.com/view/page_note/large/public/p107720358-2.jpg"];
    hzzoneItem4.carpVideoThub = @"https://img2.doubanio.com/pview/event_poster/plarge/public/f20a05dad7bf4a3.jpg";
    hzzoneItem4.title = @"黎明 2021红馆演唱会 香港";
    hzzoneItem4.titleDesc = @"音乐-演唱会";
    hzzoneItem4.DetailDesc = @"勇于创新及迎接挑战的天王黎明，每次举行个人演唱会都会追求突破，寻找新意，务求为所有观众带来前所未有的娱乐体验。这种永远求新、不断进步的精神，在以往的多次演唱会中已完全体现，不论是音乐风格、视像震撼，抑或是场地的选址及设计…..均已多次创新先河及带动全城话题；而今次在阔别10年后再次踏足红馆";
    hzzoneItem4.tageOne = @"红馆";
    hzzoneItem4.tagTwo = @"";
    hzzoneItem4.isStart = NO;
    hzzoneItem4.isCollted = NO;
    hzzoneItem4.colltecdNum =45;
    hzzoneItem4.joinTime = @"6/29 12:00:00 至 6/29 12:00:00";
    hzzoneItem4.playTime = @"6/25 12:00:00 至 6/27 12:30:00";
    hzzoneItem4.loaction = @"北京市通州区西海子西塔胡同1号";
    hzzoneItem4.phone = @"(010)80850020";
    hzzoneItem4.LoactionID = 4;
    [PandaTempArr addObject:hzzoneItem4];
    
    BOOL isLoactionModel  = [[NSUserDefaults standardUserDefaults] boolForKey:@"LoactionModel"];
    if (isLoactionModel == NO) {
        BOOL LoactionModel =  [WHC_ModelSqlite inserts:PandaTempArr.copy];
        [[NSUserDefaults standardUserDefaults] setBool:LoactionModel forKey:@"LoactionModel"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
}

@end

