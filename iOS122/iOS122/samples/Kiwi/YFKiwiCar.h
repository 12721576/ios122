//
//  YFKiwiCar.h
//  iOS122
//
//  Created by 颜风 on 15/11/17.
//  Copyright © 2015年 iOS122. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YFKiwiCar : NSObject
@property (strong ,nonatomic) NSArray * wheels; //!< 车轮.
@property (assign, nonatomic) CGFloat speed; //!< 速度.

- (BOOL)changeToGear:(NSInteger) gear;
@end
