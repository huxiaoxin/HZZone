//
//  HZZoneBaseModel.m
//  HZZone
//
//  Created by codehzx on 2021/7/26.
//

#import "HZZoneBaseModel.h"

@implementation HZZoneBaseModel
+(instancetype)BaseinitWithDic:(NSDictionary *)Dic;
{
    return [[self alloc]initWithDictionaryed:Dic];
}
-(instancetype)initWithDictionaryed:(NSDictionary *)dict
{
    if (self =[super init]) {
    [self setValuesForKeysWithDictionary:dict];
    
    }
    return self;
}
-(void)setValue:(id)value forUndefinedKey:(NSString *)key
{
   
}

@end
