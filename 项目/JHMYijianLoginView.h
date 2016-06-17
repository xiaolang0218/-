//
//  JHMYijianLoginView.h
//  项目
//
//  Created by ma c on 16/6/16.
//  Copyright © 2016年 SMU. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface JHMYijianLoginView : UIView

/**一键登录下面的线线*/
@property (strong,nonatomic) UILabel *loginXLable;
/**一键登录*/
@property (strong,nonatomic) UILabel *loginLable;
/**qq登录*/
@property (strong,nonatomic) UIButton *QQBtn;
/**微信登录*/
@property (strong,nonatomic) UIButton *WeixinBtn;
/**微博登录*/
@property (strong,nonatomic) UIButton *WeiboBtn;

@end
