//
//  LoginViewController.m
//  iOS暑期UI考核
//
//  Created by 李育腾 on 2022/8/5.
//

#import "LoginViewController.h"
#import "RegisterViewController.h"
#import "ViewController.h"
#import "FristViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _backView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"back3.jpeg"]];
    [self.view addSubview:_backView];
    _nameArray1 = [[NSMutableArray alloc] init];
    _passwordArray1 = [[NSMutableArray alloc] init];
    // Do any additional setup after loading the view.
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
    
    _registerButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_registerButton setTitle:@"GO register" forState:UIControlStateNormal];
    [_registerButton addTarget:self action:@selector(pressButton) forControlEvents:UIControlEventTouchUpInside];
    _registerButton.frame = CGRectMake(70, 600, 120, 40);
    [self.view addSubview:_registerButton];
    
    _loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_loginButton setTitle:@"GO Login" forState:UIControlStateNormal];
    [_loginButton addTarget:self action:@selector(pressButtonLogin) forControlEvents:UIControlEventTouchUpInside];
    _loginButton.frame = CGRectMake(200, 600, 120, 40);
    [self.view addSubview:_loginButton];
}
- (void)register1:(NSMutableArray *)array1 :(NSMutableArray *)array2 {
    _nameArray1 = [NSMutableArray arrayWithArray:array1];
    _passwordArray1 = [NSMutableArray arrayWithArray:array2];
}
- (void)pressButton {
    RegisterViewController* rView = [[RegisterViewController alloc] init];
    rView.nameArray = _nameArray1;
    rView.passwordArray = _passwordArray1;
    rView.delegate = self;
    [self presentViewController:rView animated:YES completion:nil];
}
- (void)pressButtonLogin {
    int bool1 = 0;
    for (int i = 0; i < _nameArray1.count; i ++) {
        if ([_userNameTextField.text isEqualToString:_nameArray1[i]] && [_passwordArray1[i] isEqualToString:_passWordTextField.text]) {
            bool1 = 1;
            break;;
        }
    }
    if (bool1 == 1) {
        FristViewController* viewFrist = [[FristViewController alloc] init];
        viewFrist.view.backgroundColor = [UIColor whiteColor];
        viewFrist.title = @"1";
        UINavigationController* navFrist = [[UINavigationController alloc] initWithRootViewController:viewFrist];
        
        secondViewController* viewSecond = [[secondViewController alloc] init];
        viewSecond.view.backgroundColor = [UIColor whiteColor];
        viewSecond.title = @"2";
        UINavigationController* navSecond = [[UINavigationController alloc] initWithRootViewController:viewSecond];

        
        
        
        thirdViewController* viewThird = [[thirdViewController alloc] init];
        viewThird.view.backgroundColor = [UIColor whiteColor];
        viewThird.title = @"3";
        UINavigationController* navThird = [[UINavigationController alloc] initWithRootViewController:viewThird];
       
        
        
        fourViewController* viewFour = [[fourViewController alloc] init];
        viewFour.view.backgroundColor = [UIColor whiteColor];
        viewFour.title = @"4";
        UINavigationController* navFour = [[UINavigationController alloc] initWithRootViewController:viewFour];
        
        fiveViewController* viewFive = [[fiveViewController alloc] init];
        viewFive.view.backgroundColor = [UIColor whiteColor];
        viewFive.title = @"5";
        UINavigationController* navFive = [[UINavigationController alloc] initWithRootViewController:viewFive];

       
        NSMutableArray* arrayTab = [NSMutableArray arrayWithObjects:navFrist, navSecond, navThird, navFour, navFive, nil];
        UITabBarController* tabBar = [[UITabBarController alloc] init];
        tabBar.viewControllers = arrayTab;
        UIWindow * window = [UIApplication  sharedApplication].windows[0];
        window.rootViewController = tabBar;
        
    } else {
        UIAlertController* alter = [UIAlertController alertControllerWithTitle:@"警告" message:@"账号或密码错误" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction* alterAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
        [alter addAction:alterAction];
        [self presentViewController:alter animated:YES completion:nil];
    }
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
