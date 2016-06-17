//
//  JHMZhuceViewController.m
//  项目
//
//  Created by ma c on 16/6/16.
//  Copyright © 2016年 SMU. All rights reserved.
//

#import "JHMZhuceViewController.h"
#import "JHMZhuceView.h"
#import "JHMYijianLoginView.h"

@interface JHMZhuceViewController ()

@property (strong,nonatomic) JHMZhuceView *zhuceView;
@property (strong,nonatomic) JHMYijianLoginView *yijianLoginView;

@end

@implementation JHMZhuceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = RGB(240, 240, 240);
    [self.view addSubview:self.zhuceView];
    [self.view addSubview:self.yijianLoginView];
    [self JHMZhuceViewcontrollerAutoLayout];
    [self.zhuceView.goLoginBtn addTarget:self action:@selector(goLoginBtnClick) forControlEvents:UIControlEventTouchUpInside];
}

- (void)goLoginBtnClick{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)JHMZhuceViewcontrollerAutoLayout{
    WS(ws);
    [self.zhuceView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(ws.view.mas_top);
        make.left.equalTo(ws.view.mas_left);
        make.right.equalTo(ws.view.mas_right);
        make.height.equalTo(225);
    }];
    [self.yijianLoginView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(ws.zhuceView.mas_bottom);
        make.left.equalTo(ws.view.mas_left);
        make.right.equalTo(ws.view.mas_right);
        make.bottom.equalTo(ws.view.mas_bottom);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (JHMZhuceView *)zhuceView{
    if (!_zhuceView) {
        _zhuceView = [[JHMZhuceView alloc]init];
    }
    return _zhuceView;
}
- (JHMYijianLoginView *)yijianLoginView{
    if (!_yijianLoginView) {
        _yijianLoginView = [[JHMYijianLoginView alloc]init];
    }
    return _yijianLoginView;
}

@end
