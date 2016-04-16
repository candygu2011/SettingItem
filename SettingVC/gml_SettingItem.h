//
//  gml_SettingItem.h
//  SettingVC
//
//  Created by GML on 16/4/14.
//  Copyright © 2016年 star. All rights reserved.
//
#import <Foundation/Foundation.h>

typedef void(^SettingOperatiom)();

typedef NS_ENUM(NSInteger,GMLSettingItemType) {
    GMLSettingItemTypeNone, // 无
    GMLSettingItemTypeArrow, //箭头
    GMLSettingItemTypeSwitch, //开关
    GMLSettingItemTypeLabel,  // 文字
};
@interface gml_SettingItem : NSObject
@property (nonatomic,copy) NSString *icon;
@property (nonatomic,copy) NSString *title;
@property (nonatomic,assign)  Class destVcClass; // 下一级控制器

@property (nonatomic,assign)  GMLSettingItemType type;
@property (nonatomic,copy) SettingOperatiom operation; // 点击cell的操作

/**
 *  <#Description#>
 *
 *  @param icon  左边图片
 *  @param title cell标题
 *  @param type  cell类型
 *
 *  @return 返回cell
 */
+(instancetype)settingItemWithIcon:(NSString *)icon title:(NSString *)title type:(GMLSettingItemType)type;


+(instancetype)settingItemWithTitle:(NSString *)title type:(GMLSettingItemType)type;

@end
