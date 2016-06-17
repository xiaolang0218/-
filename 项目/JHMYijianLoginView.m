//
//  JHMYijianLoginView.m
//  项目
//
//  Created by ma c on 16/6/16.
//  Copyright © 2016年 SMU. All rights reserved.
//

#import "JHMYijianLoginView.h"

@implementation JHMYijianLoginView

#pragma mark - 初始化
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.loginXLable];
        [self addSubview:self.loginLable];
        [self addSubview:self.QQBtn];
        [self addSubview:self.WeixinBtn];
        [self addSubview:self.WeiboBtn];
        [self JHMYijianLoginAutoLayout];
    }
    return self;
}

#pragma mark - 自动布局
- (void)JHMYijianLoginAutoLayout{
    //85 25
    WS(weakself);
    [self.loginLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakself.mas_top);
        make.centerX.equalTo(weakself.mas_centerX);
        make.width.equalTo(85);
        make.height.equalTo(25);
    }];
    [self.loginXLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(weakself.loginLable.mas_centerY);
        make.left.equalTo(weakself.mas_left).offset(16);
        make.right.equalTo(weakself.mas_right).offset(-16);
        make.height.equalTo(1);
    }];
    
    CGFloat width = (VIEW_WIDTH - 135)/4;
    
    [self.QQBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakself.loginLable.mas_bottom).offset(20);
        make.left.equalTo(weakself.mas_left).offset(width);
        make.size.equalTo(CGSizeMake(45, 45));
    }];
    [self.WeixinBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakself.loginLable.mas_bottom).offset(20);
        make.left.equalTo(weakself.QQBtn.mas_right).offset(width);
        make.size.equalTo(CGSizeMake(45, 45));
    }];
    [self.WeiboBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(weakself.QQBtn.mas_centerY);
        make.left.equalTo(weakself.WeixinBtn.mas_right).offset(width);
        make.size.equalTo(CGSizeMake(45, 45));
    }];
}


#pragma mark - 懒加载
- (UILabel *)loginXLable{
    if (!_loginXLable) {
        _loginXLable = [[UILabel alloc]init];
        _loginXLable.backgroundColor = RGB(220, 220, 220);
    }
    return _loginXLable;
}
- (UILabel *)loginLable{
    if (!_loginLable) {
        _loginLable = [[UILabel alloc]init];
        _loginLable.text = @"一键登录";
        _loginLable.textAlignment = NSTextAlignmentCenter;
        _loginLable.font = [UIFont systemFontOfSize:15];
        _loginLable.backgroundColor = RGB(240, 240, 240);
        _loginLable.textColor = RGB(200, 200, 200);
    }
    return _loginLable;
}
- (UIButton *)QQBtn{
    if (!_QQBtn) {
        _QQBtn = [[UIButton alloc]init];
        [_QQBtn setBackgroundImage:[UIImage imageNamed:@"登录界面qq登录"] forState:UIControlStateNormal];
    }
    return _QQBtn;
}
- (UIButton *)WeixinBtn{
    if (!_WeixinBtn) {
        _WeixinBtn = [[UIButton alloc]init];
        [_WeixinBtn setBackgroundImage:[UIImage imageNamed:@"登录界面微信登录"] forState:UIControlStateNormal];
    }
    return _WeixinBtn;
}
- (UIButton *)WeiboBtn{
    if (!_WeiboBtn) {
        _WeiboBtn = [[UIButton alloc]init];
        [_WeiboBtn setBackgroundImage:[UIImage imageNamed:@"登录界面微博登录"] forState:UIControlStateNormal];
    }
    return _WeiboBtn;
}

@end
