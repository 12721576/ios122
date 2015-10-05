//
//  YFAutoTransViewController.m
//  iOS122
//
//  Created by 颜风 on 15/10/5.
//  Copyright (c) 2015年 iOS122. All rights reserved.
//

#import "YFAutoTransViewController.h"

@interface YFAutoTransViewController ()

@end

@implementation YFAutoTransViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"设计图自动转代码";
    
    UIView * autoTestView = [self setupView];
    
    autoTestView.frame = CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 155.0/2);
    
    [self.view addSubview: autoTestView];
}

- (UIView *) setupView
{
    UIView * holderView = [[UIView alloc] init];
    holderView.backgroundColor = [UIColor redColor];
    
    CGFloat superHeight = 155.0;
    CGFloat superWidth = 614.0;
    
    NSArray * locatArray = @[
  @{@"width": @160, @"height": @120, @"bottom": @140, @"right": @180},
  @{@"width": @420, @"height": @31, @"bottom": @55, @"right": @615},
  @{@"width": @410, @"height": @60, @"bottom": @136, @"right": @605},
  @{@"width": @120, @"height": @28, @"bottom": @141, @"right": @628}];
    
    [locatArray enumerateObjectsUsingBlock:^(NSDictionary * obj, NSUInteger idx, BOOL *stop) {
        UIView * subView = [[UIView alloc] init];
        [holderView addSubview: subView];
        
        subView.backgroundColor = [UIColor blueColor];
        
        CGFloat subWidth = [[obj objectForKey:@"width"] floatValue];
        CGFloat subHeight = [[obj objectForKey:@"height"] floatValue];
        CGFloat subBottom = [[obj objectForKey:@"bottom"] floatValue];
        CGFloat subRight = [[obj objectForKey:@"right"] floatValue];
        
        [subView makeConstraints:^(MASConstraintMaker *make) {
            UIView * superView = subView.superview;
            
            make.width.equalTo(superView).multipliedBy(subWidth / superWidth);
            make.height.equalTo(superView).multipliedBy(subHeight / superHeight);
            
            make.right.equalTo(superView).multipliedBy(subRight / superWidth);
            make.bottom.equalTo(superView).multipliedBy(subBottom / superHeight);
        }];
    }];
    
    return holderView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
