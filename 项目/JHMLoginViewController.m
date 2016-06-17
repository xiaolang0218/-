
//
//  JHMLoginViewController.m
//  项目
//
//  Created by ma c on 16/6/15.
//  Copyright © 2016年 SMU. All rights reserved.
//


#import "JHMLoginViewController.h"
#import "JHMLoginView.h"
#import "JHMYijianLoginView.h"
#import "JHMZhuceViewController.h"

@interface JHMLoginViewController ()

@property (strong,nonatomic) JHMLoginView *loginView;
@property (strong,nonatomic) JHMYijianLoginView *yijianLoginView;

@end

@implementation JHMLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.loginView];
    [self.view addSubview:self.yijianLoginView];
    [self JHMLoginViewControllerAutoLayout];
    [self.loginView.registerBtn addTarget:self action:@selector(registerBtnClick) forControlEvents:UIControlEventTouchUpInside];
}

- (void)registerBtnClick{
    JHMZhuceViewController *vc = [[JHMZhuceViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)JHMLoginViewControllerAutoLayout{
    WS(weakSelf);
    [self.loginView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.view.mas_top);
        make.left.equalTo(weakSelf.view.mas_left);
        make.right.equalTo(weakSelf.view.mas_right);
        make.height.equalTo(200);
    }];
    [self.yijianLoginView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.loginView.mas_bottom);
        make.left.equalTo(weakSelf.view.mas_left);
        make.right.equalTo(weakSelf.view.mas_right);
        make.bottom.equalTo(weakSelf.view.mas_bottom);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (JHMLoginView *)loginView{
    if (!_loginView) {
        _loginView = [[JHMLoginView alloc]init];
        _loginView.backgroundColor = RGB(240, 240, 240);
    }
    return _loginView;
}
- (JHMYijianLoginView *)yijianLoginView{
    if (!_yijianLoginView) {
        _yijianLoginView = [[JHMYijianLoginView alloc]init];
        _yijianLoginView.backgroundColor = RGB(240, 240, 240);
    }
    return _yijianLoginView;
}

@end
