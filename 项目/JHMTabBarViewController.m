//
//  JHMTabBarViewController.m
//  项目
//
//  Created by ma c on 16/6/15.
//  Copyright © 2016年 SMU. All rights reserved.
//

#import "JHMTabBarViewController.h"

@interface JHMTabBarViewController ()

@property (strong,nonatomic) NSArray *arr;

@end

@implementation JHMTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableArray *mArr = [NSMutableArray arrayWithCapacity:self.arr.count];
    
    [self.arr enumerateObjectsUsingBlock:^(NSDictionary *dic, NSUInteger idx, BOOL * _Nonnull stop) {
        Class viewControllerClass = NSClassFromString(dic[@"ViewController"]);
        UIViewController *viewController = [[viewControllerClass alloc]init];
        viewController.title = dic[@"Title"];
        viewController.tabBarItem.selectedImage = [[UIImage imageNamed:dic[@"SelectedImage"]]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        viewController.tabBarItem.image = [[UIImage imageNamed:dic[@"Image"]]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [mArr addObject:viewController];
    }];
    
    [[UITabBarItem appearance]setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:10.0],
                                                        NSForegroundColorAttributeName:[UIColor grayColor]}
                                             forState:UIControlStateNormal];
    [[UITabBarItem appearance]setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:10.0],
                                                      NSForegroundColorAttributeName:RGB(65, 179, 241)}
                                            forState:UIControlStateSelected];
    
    self.viewControllers = mArr;
    self.selectedIndex = 0;
    
/**
    JHMTemaiViewController *vc1 =[[JHMTemaiViewController alloc]init];
    vc1.view.backgroundColor = [UIColor redColor];
    vc1.tabBarItem.image = [[UIImage imageNamed:@"菜单栏限时特卖按钮未选中状态"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc1.tabBarItem.selectedImage = [[UIImage imageNamed:@"菜单栏限时特卖按钮选中状态"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc1.tabBarItem.title = @"限时特卖";
    
    JHMClassViewController *vc2 =[[JHMClassViewController alloc]init];
    vc2.view.backgroundColor = [UIColor orangeColor];
    vc2.tabBarItem.image = [[UIImage imageNamed:@"菜单栏分类按钮未选中状态"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc2.tabBarItem.selectedImage = [[UIImage imageNamed:@"菜单栏分类按钮选中状态"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc2.tabBarItem.title = @"分类";
    
    JHMShopingViewController *vc3 =[[JHMShopingViewController alloc]init];
    vc3.view.backgroundColor = [UIColor yellowColor];
    vc3.tabBarItem.image = [[UIImage imageNamed:@"菜单栏购物车按钮未选中状态"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc3.tabBarItem.selectedImage = [[UIImage imageNamed:@"菜单栏购物车按钮选中状态"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc3.tabBarItem.title = @"购物车";
    
    JHMMyViewController *vc4 =[[JHMMyViewController alloc]init];
    vc4.view.backgroundColor = [UIColor greenColor];
    vc4.tabBarItem.image = [[UIImage imageNamed:@"菜单栏我的按钮未选中状态"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc4.tabBarItem.selectedImage = [[UIImage imageNamed:@"菜单栏我的按钮选中状态"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc4.tabBarItem.title = @"我的";
    
    self.viewControllers=@[vc1,vc2,vc3,vc4];
*/
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSArray *)arr{
    if (!_arr) {
        _arr = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"JHMTabBar" ofType:@"plist"]];
    }
    return _arr;
}

@end
