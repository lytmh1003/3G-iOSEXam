//
//  RegisterViewController.h
//  iOS暑期UI考核
//
//  Created by 李育腾 on 2022/8/5.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol registr <NSObject>

- (void) register1:(NSMutableArray*)array1:(NSMutableArray*)array2;

@end
@interface RegisterViewController : UIViewController<UITextFieldDelegate>
@property (nonatomic, strong)UITextField* userNameTextField;
@property (nonatomic, strong)UITextField* passWordTextField;
@property (nonatomic, strong)UITextField* passWordTextField2;
@property (nonatomic, strong)UIButton* registerButton;
@property (nonatomic, strong)NSMutableArray* nameArray;
@property (nonatomic, strong)NSMutableArray* passwordArray;
@property (nonatomic, assign)id<registr>delegate;// ?
@property (nonatomic, strong)UIImageView* backView;
@end

NS_ASSUME_NONNULL_END
