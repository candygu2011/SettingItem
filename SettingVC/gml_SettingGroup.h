//
//  gml_SettingGroup.h
//  SettingVC
//
//  Created by GML on 16/4/15.
//  Copyright © 2016年 star. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface gml_SettingGroup : NSObject
/**
 *  头部文字
 */
@property (nonatomic,copy) NSString *header;
/**
 *  尾部文字
 */
@property (nonatomic,copy) NSString *footer;
/**
 *  item 数组
 */
@property (nonatomic,strong) NSArray *items;
@end
