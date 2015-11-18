//
//  YFKiwiCar.m
//  iOS122
//
//  Created by 颜风 on 15/11/17.
//  Copyright © 2015年 iOS122. All rights reserved.
//

#import "YFKiwiCar.h"

@implementation YFKiwiCar

- (NSArray *)wheels
{
    if (nil == _wheels) {
        _wheels = @[@"车轮1",@"车轮2",@"车轮3",@"车轮4"];
    }
    
    return _wheels;
}

-(CGFloat)speed
{
    return 42.0;
}

- (BOOL)changeToGear:(NSInteger)gear
{
    return YES;
}
@end
