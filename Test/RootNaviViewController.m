//
//  RootNaviViewController.m
//  Test
//
//  Created by admin on 16/1/9.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "RootNaviViewController.h"
#import "WindowViewController.h"

#define kScreenHeight [UIScreen mainScreen].bounds.size.height

@interface RootNaviViewController ()

@end

@implementation RootNaviViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    self.winVC.view.frame=CGRectMake(20, kScreenHeight-80, 60, 60);
    [self.view addSubview:self.winVC.view];
}
-(UIViewController *)winVC
{
    if (!_winVC) {
        _winVC=[[WindowViewController alloc]init];
    }
    return _winVC;
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
