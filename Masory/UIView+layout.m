//
//  UIView+layout.m
//  Masory
//
//  Created by yangyonghui_yonghui on 2017/8/23.
//  Copyright © 2017年 yangyonghui. All rights reserved.
//

#import "UIView+layout.h"
#import "Masonry.h"

@implementation UIView (layout)

- (void)distributeSpaceingHorizontallyWith:(NSArray *)views {
    NSMutableArray *spaces = [NSMutableArray arrayWithCapacity:views.count + 1];
    for (int i = 0; i < views.count + 1; ++i) {
        UIView *v = [UIView new];
        [spaces addObject:v];
        [self addSubview:v];
        [v mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.equalTo(v.mas_height);
        }];
    }
    
    UIView *v0 = spaces[0];
    __weak typeof(self) ws = self;
    [v0 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(ws.mas_left);
        make.centerY.equalTo(((UIView *)views[0]).mas_centerY);
        
    }];
    
    UIView *lastSpace = v0;
    for (int i = 0; i < views.count; ++i) {
        UIView *obj = views[i];
        UIView *space = spaces[i+1];
        [obj mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(lastSpace.mas_right);
        }];
        
        [space mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(obj.mas_right);
            make.centerY.equalTo(obj.mas_centerY);
            make.width.equalTo(v0);
        }];
        
        lastSpace = space;
    }
    
    [lastSpace mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(ws.mas_right);
    }];
}

- (void)distributeSpacingVerticallyWith:(NSArray *)views {
    NSMutableArray *spaces = [NSMutableArray arrayWithCapacity:views.count + 1];
    for (int i = 0; i < views.count; ++i) {
        UIView *v = [UIView new];
        [spaces addObject:v];
        [self addSubview:v];
        [v mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.equalTo(v.mas_height);
        }];
        
        UIView *v0 = spaces[0];
        __weak typeof(self) ws = self;
        [v0 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(ws.mas_top);
            make.centerX.equalTo(((UIView *)views[0]).mas_centerX);
        }];
        
        UIView *lastSpace = v0;
        for (int i = 0; i < views.count; ++i) {
            UIView *obj = views[i];
            UIView *space = spaces[i+1];
            [obj mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(obj.mas_bottom);
                make.centerX.equalTo(obj.mas_centerX);
                make.height.equalTo(v0);
            }];
            
            lastSpace = space;
        }
        
        [lastSpace mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(ws.mas_bottom);
        }];
    }
}


@end