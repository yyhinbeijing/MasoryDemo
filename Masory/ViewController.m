//
//  ViewController.m
//  Masory
//
//  Created by yangyonghui_yonghui on 2017/8/20.
//  Copyright © 2017年 yangyonghui. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
#import "UIView+layout.h"
#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //backgroundView
    WS(ws);
    UIView *sv = [UIView new];
    sv.backgroundColor = [UIColor blackColor];
    [self.view addSubview:sv];
    [sv mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(ws.view);
        make.size.mas_equalTo(CGSizeMake(300, 300));
    }];
    
    UIView *sv11 = [UIView new];
    UIView *sv12 = [UIView new];
    UIView *sv13 = [UIView new];
    UIView *sv21 = [UIView new];
    UIView *sv31 = [UIView new];
    sv11.backgroundColor = [UIColor redColor];
    sv12.backgroundColor = [UIColor redColor];
    sv13.backgroundColor = [UIColor redColor];
    sv21.backgroundColor = [UIColor redColor];
    sv31.backgroundColor = [UIColor redColor];
    [sv addSubview:sv11];
    [sv addSubview:sv12];
    [sv addSubview:sv13];
    [sv addSubview:sv21];
    [sv addSubview:sv31];
    //给予不同的大小 测试效果
    [sv11 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(@[sv12,sv13]);
        make.centerX.equalTo(@[sv21,sv31]);
        make.size.mas_equalTo(CGSizeMake(40, 40));
    }];
    [sv12 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(70, 20));
    }];
    [sv13 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(50, 50));
    }];
    [sv21 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(50, 20));
    }];
    [sv31 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(40, 60));
    }];
    [sv distributeSpaceingHorizontallyWith:@[sv11,sv12,sv13]];
    [sv distributeSpacingVerticallyWith:@[sv11,sv21,sv31]];
//    [sv showPlaceHolderWithAllSubviews];
//    [sv hidePlaceHolder];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end


//    UIView *sv = [UIView new];
//    sv.backgroundColor = [UIColor blackColor];
//    [self.view addSubview:sv];
//    [sv mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.center.equalTo(self.view);
//        make.size.mas_equalTo(CGSizeMake(300, 200));
//    }];
//    UIView *sv1 = [UIView new];

//    [sv addSubview:sv1];
//    sv1.backgroundColor = [UIColor redColor];
//    [sv1 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.edges.equalTo(sv).width.insets(UIEdgeInsetsMake(10, 10, 10, 10));
//    }];

//    int padding1 = 10;
//    UIView *sv2 = [UIView new];
//    UIView *sv = self.view;
//
//    UIView *sv3 = [UIView new];
//    [sv2 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.centerY.mas_equalTo(sv.mas_centerY);
//        make.left.equalTo(sv.mas_left).with.offset(padding1);
//        make.right.equalTo(sv3.mas_left).with.offset(-padding1);
//        make.height.mas_equalTo(@(150));
//        make.width.equalTo(sv3);
//    }];
//    [sv3 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.centerY.mas_equalTo(sv.mas_centerY);
//        make.left.equalTo(sv2.mas_right).width.offset(padding1);
//        make.right.equalTo(sv.mas_right).width.offset(-padding1);
//        make.height.mas_equalTo(@(150));
//        make.width.equalTo(sv2);
//    }];
//    UIView *v1 = [UIView new];
//    [v1 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.height.equalTo(@(100));
//    }];
//
//    UIView *v2 = [UIView new];
//    [v2 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.height.equalTo(@(100));
//        make.centerY.equalTo(v1.mas_centerY);
//        make.left.equalTo(@(10));
//        make.right.equalTo(@(10));
//    }];
//    UILabel *label = [[UILabel alloc] init];
//    label.text = @"ddkkk打到几点军军军啦啦啦啦绿绿绿绿绿绿绿军军军军军军军军军军军军军军军军军军军军斤斤计较军军军军军军军军军军军军kk终点建安费能点击卡夫卡积分开打积分哈哈发飞机打多久啊放假啊简单的";
//    [self.view addSubview:label];
//    label.backgroundColor = [UIColor redColor];
//
//    [label mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.width.equalTo(@(100));
//        make.left.equalTo(@(40));
//        make.top.equalTo(@(40));
//        make.right.equalTo(@(40));
//        make.right.equalTo(self.view);
//    }];


//scrollview
//UIScrollView *scrollview = [UIScrollView new];
//scrollview.backgroundColor = [UIColor whiteColor];
//[sv addSubview:scrollview];
//[scrollview mas_makeConstraints:^(MASConstraintMaker *make) {
//    make.edges.equalTo(sv).with.insets(UIEdgeInsetsMake(5, 5, 5, 5));
//}];
//
//UIView *container = [UIView new];
//[scrollview addSubview:container];
//[container mas_makeConstraints:^(MASConstraintMaker *make) {
//    make.edges.equalTo(scrollview);
//    make.width.equalTo(scrollview);
//}];
//
//int count = 10;
//UIView *lastView = nil;
//for (int i = 1; i <= count; ++i) {
//    UIView *subv = [UIView new];
//    [container addSubview:subv];
//    subv.backgroundColor = [UIColor colorWithHue:(arc4random() % 256 / 256.0)
//                                      saturation:(arc4random() % 128 / 256.0) + 0.5
//                                      brightness:(arc4random() % 128 / 256.0) + 0.5
//                                           alpha:1];
//    [subv mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.and.right.equalTo(container);
//        make.height.mas_equalTo(@(20 * i));
//        if (lastView) {
//            make.top.mas_equalTo(lastView.mas_bottom);
//        }else {
//            make.top.mas_equalTo(container.mas_top);
//        }
//    }];
//    lastView = subv;
//}
//[container mas_makeConstraints:^(MASConstraintMaker *make) {
//    make.bottom.equalTo(lastView.mas_bottom);
//}];


//two view
//UIView *sv2 = [UIView new];
//UIView *sv3 = [UIView new];
//[sv addSubview:sv2];
//[sv addSubview:sv3];
//
//int padding1 = 10;
//[sv2 mas_makeConstraints:^(MASConstraintMaker *make) {
//    make.centerY.mas_equalTo(sv.mas_centerY);
//    make.left.equalTo(sv.mas_left).width.offset(padding1);
//    make.right.equalTo(sv3.mas_left).width.offset(-padding1);
//    make.height.mas_equalTo(@150);
//    make.width.equalTo(sv3);
//}];
//
//[sv3 mas_makeConstraints:^(MASConstraintMaker *make) {
//    make.centerY.mas_equalTo(sv.mas_centerY);
//    make.left.equalTo(sv2.mas_right).width.offset(padding1);
//    make.right.equalTo(sv.mas_right).width.offset(-padding1);
//    make.height.mas_equalTo(@150);
//    make.width.equalTo(sv2);
//}];
//


