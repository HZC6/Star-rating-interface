//
//  StarView.m
//  Star rating interface
//
//  Created by mac1 on 16/7/22.
//  Copyright © 2016年 hzc. All rights reserved.
//
#import "StarView.h"

@implementation StarView

- (instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        [self _createSubviews];
    }
    
    return self;
}
#pragma mark -
#pragma mark - 创建子视图
- (void)_createSubviews{
    
    //1、黄色 灰色图片
    UIImage *yellowImage = [UIImage imageNamed:@"yellow"];
    UIImage *grayImage = [UIImage imageNamed:@"gray"];
    
    //2 灰色视图
    UIView *grayView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, yellowImage.size.width*5, yellowImage.size.height)];
    grayView.backgroundColor = [UIColor colorWithPatternImage:grayImage];

    [self addSubview:grayView];
    
    //2 黄色视图
    yellowView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, yellowImage.size.width*5, yellowImage.size.height)];
    yellowView.backgroundColor = [UIColor colorWithPatternImage:yellowImage];
    //yellowView.center = self.center;
    [self addSubview:yellowView];
    
    //放大比例
    float scale = self.frame.size.height/yellowImage.size.height;
    grayView.transform = CGAffineTransformMakeScale(scale, scale);
    yellowView.transform = CGAffineTransformMakeScale(scale, scale);
    //原始坐标归零
    CGRect frame = self.frame;
    frame.origin = CGPointZero;
    
    yellowView.frame = frame;
    grayView.frame = frame;
    
}

#pragma mark -
#pragma mark - 复写set方法
- (void)setRating:(float)rating{
    
    _rating = rating;

    
    float s = rating/10;
    
    CGRect frame = yellowView.frame;
    
    frame.size.width = self.frame.size.width*s;
    
    yellowView.frame = frame;
}
@end
