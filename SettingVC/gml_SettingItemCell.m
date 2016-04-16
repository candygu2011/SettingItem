//
//  gml_SettingItemCell.m
//  SettingVC
//
//  Created by GML on 16/4/14.
//  Copyright © 2016年 star. All rights reserved.
//

#import "gml_SettingItemCell.h"
#import "gml_SettingItem.h"

@interface gml_SettingItemCell()
{
    UIImageView *_arrowImageView;
    UISwitch *_switch;
    UILabel *_rightLabel;
    
}
@end

@implementation gml_SettingItemCell

- (void)awakeFromNib {
    // Initialization code
}
+(instancetype)settingCellWithTableView:(UITableView *)tableView
{
    static NSString *identifier = @"gml_SettingItemCell";
    gml_SettingItemCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (nil == cell) {
        cell = [[gml_SettingItemCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    return cell;
    
}

- (void)setItem:(gml_SettingItem *)item
{
    _item = item;
    self.imageView.image = [UIImage imageNamed:item.icon];
    self.textLabel.text = item.title;
    if (item.type == GMLSettingItemTypeArrow) {
        if (_arrowImageView == nil) {
            _arrowImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"line_arrow"]];
        }
        self.accessoryView = _arrowImageView;
        self.selectionStyle = UITableViewCellSelectionStyleDefault;
    }else if (item.type == GMLSettingItemTypeLabel){
        if (_rightLabel == nil) {
            _rightLabel = [[UILabel alloc] init];
        }
        self.accessoryView = _rightLabel;
        self.selectionStyle = UITableViewCellSelectionStyleGray;
        
    }else if (item.type == GMLSettingItemTypeSwitch){
        if (_switch == nil) {
            _switch = [[UISwitch alloc] init];
        }
        self.accessoryView = _switch;
        self.selectionStyle = UITableViewCellSelectionStyleGray;
    }else if (item.type == GMLSettingItemTypeNone){
        self.accessoryView = nil;
        self.selectionStyle = UITableViewCellSelectionStyleGray;
    }
    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

}

@end
