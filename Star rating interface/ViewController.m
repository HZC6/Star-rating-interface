//
//  ViewController.m
//  Star rating interface
//
//  Created by mac1 on 16/7/22.
//  Copyright © 2016年 hzc. All rights reserved.
//

#import "ViewController.h"
#import "StarView.h"

#define width 155
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blackColor];
    
    StarView *starView1 = [[StarView alloc]initWithFrame:CGRectMake(50, 50,width,30)];
    starView1.rating = 3;
    [self.view addSubview:starView1];
    
    
    StarView *starView2 = [[StarView alloc]initWithFrame:CGRectMake(50, 90,width,30)];
    starView2.rating = 4.3;
    [self.view addSubview:starView2];
    
    
    StarView *starView3 = [[StarView alloc]initWithFrame:CGRectMake(50, 130,width,30)];
    starView3.rating = 6.4;
    [self.view addSubview:starView3];
    
    
    StarView *starView4 = [[StarView alloc]initWithFrame:CGRectMake(50, 170,width,30)];
    starView4.rating = 8.6;
    [self.view addSubview:starView4];
    
    
    StarView *starView5 = [[StarView alloc]initWithFrame:CGRectMake(50, 210,width,30)];
    starView5.rating = 9.2;
    [self.view addSubview:starView5];
    
    
}



@end
