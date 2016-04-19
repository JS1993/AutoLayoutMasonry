//
//  ViewController.m
//  AutoLayoutMasonry
//
//  Created by  江苏 on 16/4/19.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "ViewController.h"
#define MAS_SHORTHAND_GLOBALS
#define MAS_SHORTHAND
#import "Masonry.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self test2];
}

/**
 *  两个视图的约束
 */
-(void)test2{
    UIView* blueView=[[UIView alloc]init];
    blueView.backgroundColor=[UIColor blueColor];
    [self.view addSubview:blueView];
    
    UIView* redView=[[UIView alloc]init];
    redView.backgroundColor=[UIColor redColor];
    [self.view addSubview:redView];
    
    [blueView makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view);
        make.right.equalTo(self.view);
        make.top.equalTo(self.view).offset(20);
        make.height.equalTo(40);
    }];
    
    [redView makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(blueView.mas_centerX);
        make.right.equalTo(blueView);
        make.top.equalTo(blueView.bottom).multipliedBy(1.0).offset(30);
        make.height.equalTo(40);
    }];
}

/**
 *  一个视图的约束
 */
-(void)test1{
    UIView* blueView=[[UIView alloc]init];
    blueView.backgroundColor=[UIColor blueColor];
    [self.view addSubview:blueView];
    
    [blueView makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view);
        make.right.equalTo(self.view);
        make.top.equalTo(self.view);
        make.height.equalTo(40);
    }];
}

@end
