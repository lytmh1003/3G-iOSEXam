//
//  RegisterViewController.m
//  iOS暑期UI考核
//
//  Created by 李育腾 on 2022/8/5.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _backView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"back3.jpeg"]];
    [self.view addSubview:_backView];
    // Do any additional setup after loading the view.
    _nameArray = [[NSMutableArray alloc] init];
    _passwordArray = [[NSMutableArray alloc]init];
    
    _userNameTextField = [[UITextField alloc] init];
    _userNameTextField.frame = CGRectMake(70, 380, 270, 40);
    _userNameTextField.borderStyle = UITextBorderStyleRoundedRect;
    _userNameTextField.keyboardType = UIKeyboardTypeURL;
    _userNameTextField.placeholder = @"请输入用户名";
    [self.view addSubview:_userNameTextField];
    
    _passWordTextField = [[UITextField alloc] init];
    _passWordTextField.frame = CGRectMake(70, 440, 270, 40);
    _passWordTextField.borderStyle = UITextBorderStyleRoundedRect;
    _passWordTextField.placeholder = @"请输入密码";
    _passWordTextField.keyboardType = UIKeyboardTypeURL;
    [self.view addSubview:_passWordTextField];
    
    _passWordTextField2 = [[UITextField alloc] init];
    _passWordTextField2.frame = CGRectMake(70, 500, 270, 40);
    _passWordTextField2.borderStyle = UITextBorderStyleRoundedRect;
    _passWordTextField2.placeholder = @"请再次输入密码";
    _passWordTextField2.keyboardType = UIKeyboardTypeURL;
    [self.view addSubview:_passWordTextField2];
    
    _registerButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_registerButton setTitle:@"register" forState:UIControlStateNormal];
    [_registerButton addTarget:self action:@selector(pressButton) forControlEvents:UIControlEventTouchUpInside];
    _registerButton.frame = CGRectMake(70, 600, 70, 40);
    [self.view addSubview:_registerButton];

}
- (void)pressButton {
    int bool1 = 0;
    for (int i = 0; i < _nameArray.count; i ++) {
        if ([_nameArray[i] isEqualToString:_userNameTextField.text]) {
            bool1 = 1;
            break;
            
        }
    }
    if (bool1 == 1) {
        UIAlertController* alter = [UIAlertController alertControllerWithTitle:@"警告" message:@"重复注册" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction* alterAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
        [alter addAction:alterAction];
        [self presentViewController:alter animated:YES completion:nil];
    } else {
        [_nameArray addObject:_userNameTextField.text];
        [_passwordArray addObject:_passWordTextField.text];
        [_delegate register1:_nameArray :_passwordArray];
        [self dismissViewControllerAnimated:YES completion:nil];
    }
    _userNameTextField.text = nil;
    _passWordTextField.text = nil;
    
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [_userNameTextField resignFirstResponder];
    [_passWordTextField resignFirstResponder];
    [_passWordTextField2 resignFirstResponder];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
