//
//  OneViewController.m
//  代码创建TabBarController
//
//  Created by imac on 16/8/15.
//  Copyright © 2016年 imac. All rights reserved.
//

#import "OneViewController.h"
#import "ThirdViewController.h"

@interface OneViewController ()

@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor yellowColor];
    self.title = @"首页";
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2-75, self.view.frame.size.height/2, 150, 50)];
    [self.view addSubview:btn];
    btn.backgroundColor = [UIColor blueColor];
    [btn setTitle:@"点击跳转" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClickMethod) forControlEvents:UIControlEventTouchUpInside];
}

-(void)btnClickMethod{

    ThirdViewController *thirdVc = [[ThirdViewController alloc]init];
    //跳转隐藏tabBar
    self.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:thirdVc animated:YES];
    //返回时候显示tabBar
    self.hidesBottomBarWhenPushed = NO;
}


@end
