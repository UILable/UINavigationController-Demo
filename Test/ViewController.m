//
//  ViewController.m
//  Test
//
//  Created by admin on 16/1/9.
//  Copyright © 2016年 AlezJi. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
/*
 参考网易云音乐，导航栏上右上角的音乐的按钮在多个界面都有
 看到这种情况首先考虑的是继承自父类，在父类中添加一个事件，但是这样切换页面会非常难看
 所以把这个事件加载了导航控制器上，只要有导航控制器，就会有这个事件,并且切换起来毫无违和感
 */
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"如何使用导航控制器";
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cellid"];
    
    self.tableView.delegate=self;
    self.tableView.dataSource=self;
    
    
}
#pragma mark - tableViewDelegate
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}
//-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
//{
//    return  20;
//}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell  *cell=[tableView dequeueReusableCellWithIdentifier:@"cellid"];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cellid"];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"看网易云音乐----%d",indexPath.row];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailViewController *vc=[[DetailViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
