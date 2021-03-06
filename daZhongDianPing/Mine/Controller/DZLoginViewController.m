//
//  DZLoginViewController.m
//  daZhongDianPing
//
//  Created by ttbb on 16/9/23.
//  Copyright © 2016年 ttbb. All rights reserved.
//

#import "DZLoginViewController.h"


@interface DZLoginViewController (){
    
    
}
@property(nonatomic,strong)NSMutableDictionary *userDict;


@end

@implementation DZLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = kWhiteColor;
   
    [self initObject];
    [self createBarButtonItem];
    
}

-(void)initObject{
    
    [self.userDict setObject:@"TTBB" forKey:@"userName"];
    [self.userDict setObject:@"http://p1.bpimg.com/570557/89381afff6eca0e3.png" forKey:@"userIconUrl"];
   
    [[UserInfoManager shardManager]loginedSaveUserInfo:self.userDict];
    
    
    
    
}
-(void)createBarButtonItem
{
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [button setBackgroundImage:[UIImage imageNamed:@"btn_dismissItem"] forState:UIControlStateNormal];
    button.frame = CGRectMake(0, 0, 25, 25);
    [button addTarget:self action:@selector(dismiss) forControlEvents:UIControlEventTouchUpInside];

    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithCustomView:button];
    self.navigationItem.leftBarButtonItem = item;
    
   
}


-(void)viewWillDisappear:(BOOL)animated
{
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"reloadTableView" object:nil];

}
-(void)dismiss
{
    
  [self dismissViewControllerAnimated:YES completion:nil];
}

-(NSMutableDictionary*)userDict
{
    
    if (!_userDict) {
        
        _userDict = [NSMutableDictionary new];
    }
    
    return _userDict;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
