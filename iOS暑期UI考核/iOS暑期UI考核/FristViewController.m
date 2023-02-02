//
//  FristViewController.m
//  iOS暑期UI考核
//
//  Created by 李育腾 on 2022/8/5.
//

#import "FristViewController.h"
#import "secondViewController.h"
#import "thirdViewController.h"
#import "fourViewController.h"
#import "fiveViewController.h"
#import "FriendsViewController.h"
@interface FristViewController ()

@end

@implementation FristViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    
    UIBarButtonItem* button = [[UIBarButtonItem alloc] initWithTitle:@"push" style:UIBarButtonItemStyleDone target:self action:@selector(pressButton)];
    self.navigationItem.rightBarButtonItem = button;
}
- (void)pressButton {
    FriendsViewController* friend = [[FriendsViewController alloc] init];
    friend.view.backgroundColor = [UIColor whiteColor];
    [self.navigationController pushViewController:friend animated:YES];
    
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
