//
//  PopAnimationView.m
//  PopView
//
//  Created by Charlie.huang on 15/9/6.
//  Copyright (c) 2015年 Chalie. All rights reserved.
//

#import "PopAnimationView.h"
#define VIEW_HEIGHT 30
#define SCALE_ANI 1.2
#define SCALE_1 1
#define CornerRadius 5
#define ALPHA 0.5
@implementation PopAnimationView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(instancetype)initWithStr:(NSString *)str frame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.str = str;
        [self initView];
    }
    return self;
}
-(void)initView
{
    //初始化
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    [self.label setText:self.str];
    self.label.textAlignment = NSTextAlignmentCenter;
    [self addSubview:self.label];
    //添加点击消失手势
    UITapGestureRecognizer *gest = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hide)];
    [self addGestureRecognizer:gest];
    //圆角
    [self.layer setCornerRadius:CornerRadius];
    [self.layer setMasksToBounds:YES];
    [self setBackgroundColor:[UIColor cyanColor]];
    self.alpha = 0.5;

}

-(void)showOnView:(UIView *)view
{
    [view addSubview:self];
    [view bringSubviewToFront:self];
 self.label.transform = CGAffineTransformMakeScale(0, 0);
    self.transform = CGAffineTransformMakeScale(0, 0);
    [UIView animateWithDuration:0.2 delay:0 usingSpringWithDamping:0.6 initialSpringVelocity:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
         self.transform = CGAffineTransformMakeScale(SCALE_1, SCALE_1);
    } completion:nil];
    [UIView animateWithDuration:0.3 delay:0.2 usingSpringWithDamping:0.5 initialSpringVelocity:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        self.label.transform = CGAffineTransformMakeScale(SCALE_1, SCALE_1);
    } completion:nil];
    
}
-(void)hide
{
    [self removeFromSuperview];
}
@end
