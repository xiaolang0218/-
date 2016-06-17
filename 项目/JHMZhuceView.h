//
//  JHMZhuceView.h
//  项目
//
//  Created by ma c on 16/6/16.
//  Copyright © 2016年 SMU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JHMZhuceView : UIView

/**注册提示*/
@property (strong,nonatomic) UILabel *promptLable;
/**背景*/
@property (strong,nonatomic) UILabel *bgLable;
/**线*/
@property (strong,nonatomic) UILabel *xianLable;
/**手机号码*/
@property (strong,nonatomic) UITextField *phoneNumText;
/**密码*/
@property (strong,nonatomic) UITextField *passwordText;
/**下一步*/
@property (strong,nonatomic) UIButton *nextBtn;;
/**去登录*/
@property (strong,nonatomic) UIButton *goLoginBtn;

@end
