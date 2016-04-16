//
//  BaseSettingController.h
//  SettingVC
//
//  Created by GML on 16/4/15.
//  Copyright © 2016年 star. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "gml_SettingItem.h"
#import "gml_SettingGroup.h"

@interface BaseSettingController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    NSMutableArray *_allGroups;
}


@end
