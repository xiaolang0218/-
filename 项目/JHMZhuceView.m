//
//  JHMZhuceView.m
//  项目
//
//  Created by ma c on 16/6/16.
//  Copyright © 2016年 SMU. All rights reserved.
//

#import "JHMZhuceView.h"

@implementation JHMZhuceView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.promptLable];
        [self addSubview:self.bgLable];
        [self addSubview:self.phoneNumText];
        [self addSubview:self.passwordText];
        [self addSubview:self.xianLable];
        [self addSubview:self.nextBtn];
        [self addSubview:self.goLoginBtn];
        [self JHMZhuceViewAutoLayout];
    }
    return self;
}

#pragma mark - 自动布局
- (void)JHMZhuceViewAutoLayout{
    WS(ws);
    [self.promptLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.equalTo(35);
        make.top.equalTo(ws.mas_top);
        make.left.equalTo(ws.mas_left).offset(15);
        make.right.equalTo(ws.mas_right).offset(-15);
    }];
    [self.bgLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(ws.promptLable.mas_bottom);
        make.left.equalTo(ws.mas_left);
        make.right.equalTo(ws.mas_right);
        make.height.equalTo(88);
    }];
    [self.xianLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(ws.bgLable.mas_centerY);
        make.height.equalTo(1);
        make.left.equalTo(ws.mas_left).offset(15);
        make.right.equalTo(ws.mas_right).offset(-15);
    }];
    [self.phoneNumText mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.equalTo(44);
        make.left.equalTo(ws.mas_left).offset(15);
        make.right.equalTo(ws.mas_right).offset(-15);
        make.top.equalTo(ws.bgLable.mas_top);
    }];
    [self.passwordText mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.equalTo(44);
        make.top.equalTo(ws.phoneNumText.mas_bottom);
        make.left.equalTo(ws.phoneNumText.mas_left);
        make.right.equalTo(ws.phoneNumText.mas_right);
    }];
    [self.nextBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(ws.bgLable.mas_bottom).offset(15);
        make.left.equalTo(ws.mas_left).offset(16);
        make.right.equalTo(ws.mas_right).offset(-16);
        make.height.equalTo(35);
    }];
    [self.goLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(ws.nextBtn.mas_bottom).offset(23);
        make.right.equalTo(ws.mas_right).offset(-15);
        make.size.equalTo(CGSizeMake(48, 16));
    }];
}

#pragma mark - 懒加载
- (UILabel *)promptLable{
    if (!_promptLable) {
        _promptLable = [[UILabel alloc]init];
        _promptLable.text = @"请输入手机号码注册新用户";
        _promptLable.textColor = RGB(90, 90, 90);
        _promptLable.font = [UIFont systemFontOfSize:13];
    }
    return _promptLable;
}
- (UILabel *)bgLable{
    if (!_bgLable) {
        _bgLable = [[UILabel alloc]init];
        _bgLable.backgroundColor = RGB(255, 255, 255);
    }
    return _bgLable;
}
- (UILabel *)xianLable{
    if (!_xianLable) {
        _xianLable = [[UILabel alloc]init];
        _xianLable.backgroundColor = RGB(220, 220, 220);
    }
    return _xianLable;
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
        _passwordText.placeholder = @"设置账号密码";
        _passwordText.secureTextEntry = YES;
        _passwordText.backgroundColor = [UIColor clearColor];
        _phoneNumText.font = [UIFont systemFontOfSize:15.0];
    }
    return _passwordText;
}

- (UIButton *)nextBtn{
    if (!_nextBtn) {
        _nextBtn = [[UIButton alloc]init];
        [_nextBtn setBackgroundImage:[UIImage imageNamed:@"注册界面下一步按钮"] forState:UIControlStateNormal];
    }
    return _nextBtn;
}
- (UIButton *)goLoginBtn{
    if (!_goLoginBtn) {
        _goLoginBtn = [[UIButton alloc]init];
        [_goLoginBtn setTitle:@"去登录" forState:UIControlStateNormal];
        [_goLoginBtn setTitleColor:RGB(45, 186, 241) forState:UIControlStateNormal];
        _goLoginBtn.titleLabel.font = [UIFont systemFontOfSize:15.0];
    }
    return _goLoginBtn;
}


@end
