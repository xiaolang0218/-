//
//  JHMLoginView.h
//  项目
//
//  Created by ma c on 16/6/15.
//  Copyright © 2016年 SMU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JHMLoginView : UIView

/**text底下*/
@property (strong,nonatomic) UIView *viewText;
/**手机号*/
@property (strong,nonatomic) UITextField *phoneNumText;
/**密码*/
@property (strong,nonatomic) UITextField *passwordText;
/**中间的线*/
@property (strong,nonatomic) UILabel *xianLable;
/**登录按钮*/
@property (strong,nonatomic) UIButton *loginBtn;
/**注册按钮*/
@property (strong,nonatomic) UIButton *registerBtn;

@end
