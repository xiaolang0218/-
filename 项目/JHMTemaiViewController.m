//
//  JHMTemaiViewController.m
//  项目
//
//  Created by ma c on 16/6/15.
//  Copyright © 2016年 SMU. All rights reserved.
//

#import "JHMTemaiViewController.h"
#import "JHMLoginViewController.h"

@interface JHMTemaiViewController ()

@end

@implementation JHMTemaiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(50, 100, 100, 30)];
    [btn setTitle:@"登陆" forState:(UIControlStateNormal)];
    [btn setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
    btn.backgroundColor = [UIColor whiteColor];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:btn];
    
//    UITextField *text = [[UITextField alloc]initWithFrame:CGRectMake(50, 150, 100, 30)];
//    text.borderStyle = UITextBorderStyleRoundedRect;
//    text.backgroundColor = [UIColor whiteColor];
//    [text setTintColor:[UIColor redColor]];
//    [self.view addSubview:text];
    
}

- (void)btnClick{
    JHMLoginViewController *vc = [[JHMLoginViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
