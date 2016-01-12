//
//  WindowViewController.m
//  Test
//
//  Created by admin on 16/1/9.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "WindowViewController.h"
#import "AppDelegate.h"
#import "NextViewController.h"
@interface WindowViewController ()

@end

@implementation WindowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.clipsToBounds=YES;
    self.view.layer.cornerRadius=30;
    self.view.layer.masksToBounds=YES;
    self.view.backgroundColor = [UIColor redColor];
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    AppDelegate *app=[UIApplication sharedApplication].delegate;
    NextViewController *vc= [[NextViewController alloc]init];
    //这里获取到导航控制器 ，所以无论是push 还是present 都可以  只需要保持一致即可
    

    //因为winVC是加载导航控制器上的，所以如果不想显示的话只能present
//    [app.rootNV pushViewController:vc animated:YES];
    [app.rootNV presentViewController:vc animated:YES completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
