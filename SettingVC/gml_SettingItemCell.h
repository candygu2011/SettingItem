//
//  gml_SettingItemCell.h
//  SettingVC
//
//  Created by GML on 16/4/14.
//  Copyright © 2016年 star. All rights reserved.
//

#import <UIKit/UIKit.h>
@class gml_SettingItem;
@interface gml_SettingItemCell : UITableViewCell
@property (nonatomic,strong) gml_SettingItem *item;

+(instancetype)settingCellWithTableView:(UITableView *)tableView;
@end
