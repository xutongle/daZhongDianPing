//
//  webViewController.m
//  daZhongDianPing
//
//  Created by ttbb on 16/9/14.
//  Copyright © 2016年 ttbb. All rights reserved.
//

#import "webViewController.h"

#import "NetWorkRequestSingleton.h"
#define iOS7 [[[UIDevice currentDevice]systemVersion] floatValue] == 7.0

@interface webViewController ()

@end

@implementation webViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
   
        UIWebView *webview = [[UIWebView alloc]initWithFrame:CGRectMake(0, 0, KSCREEN_WIDTH, KSCREEN_HEIGHT)];
        [webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:_url]]];
        [self.view addSubview:webview];

//    [[NetWorkRequestSingleton sharedManager]getAdv:nil url:@"http://120.25.93.225:9090/CPSP-SER2/v1/message/get_message_list.json?date=&order_by=0&token=GJ4TKF2T0E4R0PQHG5WHUM5NUDLGA0" successBlock:^(id result) {
//        
//    } failBlock:^(NSString *error) {
//        
//    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
