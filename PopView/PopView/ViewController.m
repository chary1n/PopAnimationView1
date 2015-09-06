//
//  ViewController.m
//  PopView
//
//  Created by Charlie.huang on 15/9/2.
//  Copyright (c) 2015年 Chalie. All rights reserved.
//

#import "ViewController.h"
#import "PopAnimationView.h"
@interface ViewController ()
{
    PopAnimationView *popView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    popView = [[PopAnimationView alloc] initWithStr:@"暂无消息" frame:CGRectMake(0, 20,self.view.frame.size.width, 30)];

}
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint prePoint = [touch previousLocationInView:self.view];
    CGPoint nextPoint = [touch locationInView:self.view];
    if (nextPoint.y - prePoint.y >= 20) {
        [popView showOnView:self.view];
    }
}
-(void)viewDidAppear:(BOOL)animated
{
    //[popView showOnView:self.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
