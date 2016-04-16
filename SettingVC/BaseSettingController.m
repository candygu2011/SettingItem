//
//  BaseSettingController.m
//  SettingVC
//
//  Created by GML on 16/4/15.
//  Copyright © 2016年 star. All rights reserved.
//

#import "BaseSettingController.h"
#import "gml_SettingItemCell.h"

@interface BaseSettingController ()

@property (nonatomic,weak) UITableView *tableView;

@end

@implementation BaseSettingController

- (void)viewDidLoad {
    [super viewDidLoad];
    _allGroups = [NSMutableArray array];
    UITableView *tab = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
    tab.delegate = self;
    tab.dataSource = self;
    [self.view addSubview:tab];
    self.tableView = tab;
    

}



#pragma mark -tableview datasource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    gml_SettingGroup *group = _allGroups[section];
    
    return group.items.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    gml_SettingItemCell *cell = [gml_SettingItemCell settingCellWithTableView:tableView];
    gml_SettingGroup *group = _allGroups[indexPath.section];
    gml_SettingItem *item = group.items[indexPath.row];
    cell.item = item;
    if (cell.item.type == GMLSettingItemTypeArrow) {

    }
    return  cell;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    gml_SettingGroup *group = _allGroups[indexPath.section];
    gml_SettingItem *item = group.items[indexPath.row];
    
//    if (item.operation) {
//        item.operation();
//    }
    if (item.destVcClass) {
        UIViewController *vc = [[item.destVcClass alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }
    
}

#pragma mark -layz
-(NSMutableArray *)allGroups
{
    if (nil == _allGroups) {
        _allGroups = [[NSMutableArray alloc] init];
    }
    return _allGroups;
}

@end
