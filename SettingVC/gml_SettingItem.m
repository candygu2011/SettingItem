//
//  gml_SettingItem.m
//  SettingVC
//
//  Created by GML on 16/4/14.
//  Copyright © 2016年 star. All rights reserved.
//

#import "gml_SettingItem.h"

@implementation gml_SettingItem
+(instancetype)settingItemWithIcon:(NSString *)icon title:(NSString *)title type:(GMLSettingItemType)type
{
    gml_SettingItem *item = [[gml_SettingItem alloc] init];
    item.title = title;
    item.icon = icon;
    item.type = type;
    return item;
}


@end
