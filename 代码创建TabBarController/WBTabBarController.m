//
//  WBTabBarController.m
//  代码创建TabBarController
//
//  Created by imac on 16/8/15.
//  Copyright © 2016年 imac. All rights reserved.
//

#import "WBTabBarController.h"
#import "OneViewController.h"
#import "TwoViewController.h"
@interface WBTabBarController ()

@end

@implementation WBTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //初始化两个视图控制器
    OneViewController *oneVc = [[OneViewController alloc]init];
    TwoViewController *twoVc = [[TwoViewController alloc]init];
    
    //为两个视图控制器添加导航栏控制器
    UINavigationController *navOne = [[UINavigationController alloc]initWithRootViewController:oneVc];
    UINavigationController *navTwo = [[UINavigationController alloc]initWithRootViewController:twoVc];
    
    //设置控制器文字
    navOne.title = @"首页";
    navTwo.title = @"个人中心";
    
    //设置控制器图片(使用imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal,不被系统渲染成蓝色)
    navOne.tabBarItem.image = [[UIImage imageNamed:@"icon_home_bottom_statist"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    navOne.tabBarItem.selectedImage = [[UIImage imageNamed:@"icon_home_bottom_statist_hl"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    navTwo.tabBarItem.image = [[UIImage imageNamed:@"icon_home_bottom_search"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    navTwo.tabBarItem.selectedImage = [[UIImage imageNamed:@"icon_home_bottom_search_hl"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    //改变tabbarController 文字选中颜色(默认渲染为蓝色)
    [[UITabBarItem appearance] setTitleTextAttributes:@{ NSForegroundColorAttributeName:[UIColor lightGrayColor]} forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:@{ NSForegroundColorAttributeName:[UIColor redColor]} forState:UIControlStateSelected];
    
    //创建一个数组包含四个导航栏控制器
    NSArray *vcArry = [NSArray arrayWithObjects:navOne,navTwo,nil];
    
    //将数组传给UITabBarController
    self.viewControllers = vcArry;
}



@end
