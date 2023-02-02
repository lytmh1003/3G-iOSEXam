//
//  LoginViewController.h
//  iOS暑期UI考核
//
//  Created by 李育腾 on 2022/8/5.
//

#import <UIKit/UIKit.h>
#import "RegisterViewController.h"
#import "FristViewController.h"
#import "secondViewController.h"
#import "thirdViewController.h"
#import "fourViewController.h"
#import "fiveViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface LoginViewController : UIViewController<registr>
- (void)register1:(NSMutableArray *)array1 :(NSMutableArray *)array2;
@property (nonatomic, strong)UITextField* userNameTextField;
@property (nonatomic, strong)UITextField* passWordTextField;
@property (nonatomic, strong)UIButton* registerButton;
@property (nonatomic, strong)UIButton* loginButton;
@property (nonatomic, strong)NSMutableArray* nameArray1;
@property (nonatomic, strong)NSMutableArray* passwordArray1;
@property (nonatomic, strong)UIImageView* backView;
@end

NS_ASSUME_NONNULL_END
