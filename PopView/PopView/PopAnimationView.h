//
//  PopAnimationView.h
//  PopView
//
//  Created by Charlie.huang on 15/9/6.
//  Copyright (c) 2015年 Chalie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PopAnimationView : UIView
@property (nonatomic,strong)NSString* str;
@property (nonatomic,retain)UILabel* label;

-(instancetype)initWithStr:(NSString *)str frame:(CGRect)frame;

-(void)showOnView:(UIView *)view;
-(void)hide;
@end
