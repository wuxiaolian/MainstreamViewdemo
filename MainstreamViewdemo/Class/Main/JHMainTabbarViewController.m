//
//  JHMainTabbarViewController.m
//  MainstreamViewdemo
//
//  Created by Wuxiaolian on 2018/5/7.
//  Copyright © 2018年 Wu. All rights reserved.
//

#import "JHMainTabbarViewController.h"
#import "JHHomeViewController.h"
#import "JHMyViewController.h"

@interface JHMainTabbarViewController ()

@end

@implementation JHMainTabbarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 1.添加第一个控制器
    // 1.1 初始化
    JHHomeViewController *oneVC = [[JHHomeViewController alloc]init];
    [self setUpOneChildViewController:oneVC image:[UIImage imageNamed:@""] title:@"首页"];    // 2.添加第2个控制器

    // 2.添加第2个控制器
    JHMyViewController *twoVC = [[JHMyViewController alloc]init];
    [self setUpOneChildViewController:twoVC image:[UIImage imageNamed:@""] title:@"我的"];    // 2.添加第2个控制器

}
/**
   *  添加一个子控制器的方法
   */- (void)setUpOneChildViewController:(UIViewController *)viewController image:(UIImage *)image title:(NSString *)title{
       UINavigationController *navC = [[UINavigationController alloc]initWithRootViewController:viewController];
       navC.title = title;
       navC.tabBarItem.image = image;
       [navC.navigationBar setBackgroundImage:[UIImage imageNamed:@"commentary_num_bg"] forBarMetrics:UIBarMetricsDefault];
       
       viewController.navigationItem.title = title;
       
       [self addChildViewController:navC];
   }

@end
