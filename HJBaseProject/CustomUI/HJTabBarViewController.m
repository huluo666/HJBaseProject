//
//  HJTabBarViewController.m
//  HJBaseProject
//
//  Created by luo.h on 15/11/4.
//  Copyright © 2015年 l.h. All rights reserved.
//

#import "HJTabBarViewController.h"
#import "HJNavigationController.h"

#import "HomeViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"


@interface HJTabBarViewController ()

@end

@implementation HJTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //添加首页控制器
    HomeViewController *home = [[HomeViewController alloc] init];
    [self addChildVC:home imageName:@"tab_home" selectedImage:@"tab_home_selected" title:@"首页"];
    //添加试衣篮控制器
    
    SecondViewController *try = [[SecondViewController alloc] init];
    [self addChildVC:try imageName:@"tab_try" selectedImage:@"tab_try_selected" title:@"试衣篮"];
    //添加我控制器

    ThirdViewController *login = [[ThirdViewController alloc] init];
    [self addChildVC:login imageName:@"tab_profile" selectedImage:@"tab_profile_selected" title:@"我的"];
}


-(void)addChildVC:(UIViewController *)childVC imageName:(NSString *)imageName selectedImage:(NSString *)selectedImageName title:(NSString *)title
{
    childVC.tabBarItem.title = title;
    childVC.tabBarItem.image = [UIImage imageNamed:imageName];
    UIImage *selectedImage = [UIImage imageNamed:selectedImageName];
    selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    HJNavigationController *NV = [[HJNavigationController alloc] initWithRootViewController:childVC];
    childVC.tabBarItem.selectedImage = selectedImage;
    childVC.navigationItem.title = title;
    NSMutableDictionary *attrits = [[NSMutableDictionary alloc] init];
    attrits[NSForegroundColorAttributeName]= HJColor(252, 61, 99);
    [childVC.tabBarItem setTitleTextAttributes:attrits forState:UIControlStateSelected];
    [self addChildViewController:NV];
}



@end
