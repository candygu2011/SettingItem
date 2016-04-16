//
//  ViewController.m
//  SettingVC
//
//  Created by Cen on 16/4/14.
//  Copyright © 2016年 star. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"
@interface ViewController ()


@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addItems];
    
    
}

- (void)addItems
{
    gml_SettingItem *pushItem = [gml_SettingItem settingItemWithIcon:nil title:@"push" type:GMLSettingItemTypeSwitch];
    gml_SettingItem *recommendItem = [gml_SettingItem settingItemWithIcon:nil title:@"recommend" type:GMLSettingItemTypeArrow];
    recommendItem.destVcClass = [NextViewController class];
//    __weak typeof(self)weakSelf = self;
//    recommendItem.operation = ^{
//        
//        [weakSelf.navigationController pushViewController:[[NextViewController alloc] init] animated:YES];
//        
//    };
    gml_SettingItem *goodItem = [gml_SettingItem settingItemWithIcon:nil title:@"good" type:GMLSettingItemTypeNone];
    gml_SettingItem *cacheItem = [gml_SettingItem settingItemWithIcon:nil title:@"cache" type:GMLSettingItemTypeLabel];
    gml_SettingItem *aboutItem = [gml_SettingItem settingItemWithIcon:nil title:@"about" type:GMLSettingItemTypeArrow];
    
    gml_SettingGroup *group = [[gml_SettingGroup alloc] init];
    group.items = @[pushItem,recommendItem,goodItem,cacheItem,aboutItem];
    
    [_allGroups addObject:group];
    
}

-(void)dealloc
{
    NSLog(@"---------");
}


@end
