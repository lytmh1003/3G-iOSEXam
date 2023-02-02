//
//  ViewController.m
//  iOS暑期UI考核
//
//  Created by 李育腾 on 2022/8/5.
//

#import "ViewController.h"
#import "LoginViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _backView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"back3.jpeg"]];
    [self.view addSubview:_backView];
    NSTimer * myTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timeOut) userInfo:nil repeats:NO];
}

- (void)timeOut {
    LoginViewController* login = [[LoginViewController alloc] init];
    UIWindow* window = [UIApplication sharedApplication].windows[0];
    window.rootViewController = login;
}
@end
