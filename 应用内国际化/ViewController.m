//
//  ViewController.m
//  应用内国际化
//
//  Created by 张芳涛 on 2016/12/23.
//  Copyright © 2016年 张芳涛. All rights reserved.
//

#import "ViewController.h"
#import "internationalizationObject.h"
#import "AppDelegate.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *btn = [[UIButton alloc]init];
    btn.frame  = CGRectMake(100, 100, 100, 100);
    btn.backgroundColor = [UIColor grayColor];
    NSString *title = Localized(@"myName");
    NSLog(@"%@",title);
    [btn setTitle:title forState:UIControlStateNormal];
    [self.view addSubview:btn];
    
    UIButton *CN = [[UIButton alloc]init];
    CN.frame = CGRectMake(0, 220, 100, 50);
    CN.backgroundColor = [UIColor redColor];
    NSString *chinese = Localized(@"CHINESE");
    [CN setTitle:chinese forState:UIControlStateNormal];
    [CN addTarget:self action:@selector(chineseClick) forControlEvents:UIControlEventTouchUpInside];
    UIButton *EN = [[UIButton alloc]init];
    EN.frame = CGRectMake(100, 220, 100, 50);
    EN.backgroundColor = [UIColor greenColor];
    NSString *english = Localized(@"ENGLISH");
    [EN setTitle:english forState:UIControlStateNormal];
    [EN addTarget:self action:@selector(EnglishClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:CN];
    [self.view addSubview:EN];
}
-(void)chineseClick
{
        [[NSUserDefaults standardUserDefaults] setObject:@"zh-Hans" forKey:@"appLanguage"];
    [self reloadView];
}
-(void)EnglishClick
{
        [[NSUserDefaults standardUserDefaults] setObject:@"en" forKey:@"appLanguage"];
    [self reloadView];
}

-(void)reloadView{
    [[NSUserDefaults standardUserDefaults]synchronize];

    AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    ViewController *vc = [[ViewController alloc]init];
    delegate.window.rootViewController = vc;
    [delegate.window reloadInputViews];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
