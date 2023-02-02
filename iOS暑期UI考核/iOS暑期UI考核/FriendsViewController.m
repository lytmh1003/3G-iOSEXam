//
//  FriendsViewController.m
//  iOS暑期UI考核
//
//  Created by 李育腾 on 2022/8/5.
//

#import "FriendsViewController.h"
#import "fristTableViewCell.h"
#import "SecondTableViewCell.h"
#import "ThirdTableViewCell.h"
#import "FoutTableViewCell.h"

@interface FriendsViewController ()

@end

@implementation FriendsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"朋友圈";
    self.view.backgroundColor = [UIColor whiteColor];
    UIBarButtonItem* button = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:nil];
    self.navigationItem.rightBarButtonItem = button;
    
    UIBarButtonItem* buttonLeft = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"fanhui.png"] style:UIBarButtonItemStyleDone target:self action:@selector(pressButton)];
    self.navigationItem.leftBarButtonItem = buttonLeft;
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [_tableView registerClass:[fristTableViewCell class] forCellReuseIdentifier:@"1"];
    [_tableView registerClass:[SecondTableViewCell class] forCellReuseIdentifier:@"2"];
    [_tableView registerClass:[ThirdTableViewCell class] forCellReuseIdentifier:@"3"];
    [_tableView registerClass:[FoutTableViewCell class] forCellReuseIdentifier:@"4"];
    
    [self.view addSubview:_tableView];
}
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        fristTableViewCell* cell = [self.tableView dequeueReusableCellWithIdentifier:@"1"];
        cell.backgroundColor = [UIColor whiteColor];
        return  cell;
    } else if (indexPath.section == 1) {
        SecondTableViewCell* cell = [self.tableView dequeueReusableCellWithIdentifier:@"2"];
        return cell;
    } else if (indexPath.section == 2) {
        ThirdTableViewCell* cell = [self.tableView dequeueReusableCellWithIdentifier:@"3"];
        return cell;
    } else if (indexPath.section == 3) {
        FoutTableViewCell* cell = [self.tableView dequeueReusableCellWithIdentifier:@"4"];
        return cell;
    }

    return 0;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 4;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        return 300;
    } else if (indexPath.section == 1) {
        return 460;
    } else {
        return 300;
    }
}
- (void)pressButton {
    [self.navigationController popViewControllerAnimated:YES];
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
