//
//  StarView.h
//  Star rating interface
//
//  Created by mac1 on 16/7/22.
//  Copyright © 2016年 hzc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StarView : UIView{
    
    UIView *yellowView;
}

//评分
@property(nonatomic,assign)float rating;

@end
