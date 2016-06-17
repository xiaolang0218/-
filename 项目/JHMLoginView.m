//
//  JHMLoginView.m
//  项目
//
//  Created by ma c on 16/6/15.
//  Copyright © 2016年 SMU. All rights reserved.
//

#import "JHMLoginView.h"

@implementation JHMLoginView

#pragma mark - 初始化
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.viewText];
        [self.viewText addSubview:self.phoneNumText];
        [self.viewText addSubview:self.passwordText];
        [self.viewText addSubview:self.xianLable];
        [self addSubview:self.loginBtn];
        [self addSubview:self.registerBtn];
        [self JHMLoginViewAutoLayout];
    }
    return self;
}

#pragma mark - 自动布局
- (void)JHMLoginViewAutoLayout{
    WS(weakSelf);
    [self.viewText mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.mas_top).offset(15.5);
        make.left.equalTo(weakSelf.mas_left);
        make.right.equalTo(weakSelf.mas_right);
        make.height.equalTo(88);
    }];
    [self.phoneNumText mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.viewText.mas_top);
        make.left.equalTo(weakSelf.viewText.mas_left).offset(15);
        make.right.equalTo(weakSelf.viewText.mas_right).offset(-15);
        make.height.equalTo(44);
    }];
    [self.passwordText mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.phoneNumText.mas_bottom);
        make.left.equalTo(weakSelf.viewText.mas_left).offset(15);
        make.right.equalTo(weakSelf.viewText.mas_right).offset(-15);
        make.height.equalTo(44);
    }];
    [self.xianLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.phoneNumText.mas_bottom).offset(-1);
        make.left.equalTo(weakSelf.mas_left).offset(15);
        make.right.equalTo(weakSelf.mas_right).offset(-15);
        make.height.equalTo(1);
    }];
    [self.loginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.viewText.mas_bottom).offset(15);
        make.left.equalTo(weakSelf.mas_left).offset(16);
        make.right.equalTo(weakSelf.mas_right).offset(-16);
        make.height.equalTo(35);
    }];
    [self.registerBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf.loginBtn.mas_bottom).offset(17);
        make.right.equalTo(weakSelf.mas_right).offset(-16);
        make.width.equalTo(60);
        make.height.equalTo(20);
    }];
}

#pragma mark - 懒加载
- (UIView *)viewText{
    if (!_viewText) {
        _viewText = [[UIView alloc]init];
        _viewText.backgroundColor = [UIColor whiteColor];
    }
    return _viewText;
}
- (UITextField *)phoneNumText{
    if (!_phoneNumText) {
        _phoneNumText = [[UITextField alloc]init];
        _phoneNumText.placeholder = @"请输入手机号码";
        _phoneNumText.backgroundColor = [UIColor clearColor];
        _phoneNumText.font = [UIFont systemFontOfSize:15.0];
    }
    return _phoneNumText;
}
- (UITextField *)passwordText{
    if (!_passwordText) {
        _passwordText = [[UITextField alloc]init];
        _passwordText.placeholder = @"请输入密码";
        _passwordText.secureTextEntry = YES;
        _passwordText.backgroundColor = [UIColor clearColor];
        _phoneNumText.font = [UIFont systemFontOfSize:15.0];
    }
    return _passwordText;
}
- (UILabel *)xianLable{
    if (!_xianLable) {
        _xianLable = [[UILabel alloc]init];
        _xianLable.backgroundColor = RGB(220, 220, 220);
    }
    return _xianLable;
}
- (UIButton *)loginBtn{
    if (!_loginBtn) {
        _loginBtn = [[UIButton alloc]init];
        [_loginBtn setBackgroundImage:[UIImage imageNamed:@"登录界面登录按钮"] forState:UIControlStateNormal];
    }
    return _loginBtn;
}
- (UIButton *)registerBtn{
    if (!_registerBtn) {
        _registerBtn = [[UIButton alloc]init];
        [_registerBtn setTitle:@"免费注册" forState:UIControlStateNormal];
        [_registerBtn setTitleColor:RGB(0, 111, 164) forState:UIControlStateNormal];
        _registerBtn.titleLabel.font = [UIFont systemFontOfSize:15.0];
    }
    return _registerBtn;
}

@end
