//
//  HJNavigationController.m
//  HJBaseProject
//
//  Created by luo.h on 15/11/4.
//  Copyright © 2015年 l.h. All rights reserved.
//

#import "HJNavigationController.h"
#import "UIView+Extension.h"

@interface HJNavigationController ()

@end

@implementation HJNavigationController



+(void)initialize
{
    UIBarButtonItem *item = [UIBarButtonItem appearance];
    NSMutableDictionary *attributs = [NSMutableDictionary dictionary];
    attributs[NSForegroundColorAttributeName] =  HJColor(131, 132, 133);
    attributs[NSFontAttributeName] = [UIFont systemFontOfSize:15];
    [item setTitleTextAttributes:attributs forState:UIControlStateNormal];
    UINavigationBar *bar = [UINavigationBar appearance];
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[NSFontAttributeName] = [UIFont systemFontOfSize:17];
    [bar setTitleTextAttributes:params];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.childViewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setBackgroundImage:[UIImage imageNamed:@"return-21×21-1×"] forState:UIControlStateNormal];
        button.size = button.currentBackgroundImage.size;
        [button addTarget:self action:@selector(back ) forControlEvents:UIControlEventTouchUpInside];
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    }
    [super pushViewController:viewController animated:animated];
}

-(void)back
{
    [self popViewControllerAnimated:YES];
}

@end
