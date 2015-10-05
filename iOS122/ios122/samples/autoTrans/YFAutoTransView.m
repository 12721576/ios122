//
//  YFAutoTransView.m
//  iOS122
//
//  Created by 颜风 on 15/10/6.
//  Copyright (c) 2015年 iOS122. All rights reserved.
//

#import "YFAutoTransView.h"

@implementation YFAutoTransView

+ (NSDictionary *) subViewsConfig{
    NSNumber * holderWidth = @640.0;
    NSNumber * holderHeight = @155.0;
    
    NSArray * subConfig = @[
  @[NSStringFromClass([UIImageView class]), @"imageView", @160, @120, @140, @180],
  @[NSStringFromClass([UILabel class]), @"titleLabel", @420, @31, @55, @615],
  @[NSStringFromClass([UILabel class]), @"detailLabel", @410, @60, @136, @605],
  @[NSStringFromClass([UIButton class]), @"chatBtn", @120, @28, @141, @628]];
    
    NSMutableArray * subViewsConfig = [NSMutableArray arrayWithCapacity: 42];
    
    [subConfig enumerateObjectsUsingBlock:^(NSArray * obj, NSUInteger idx, BOOL *stop) {
        if (6 != obj.count) {
            return;
        }
        
        NSDictionary * configDict =
        @{
          YFViewComponentSubViewClassNameKey: obj[0],
          YFViewComponentSubViewPropNameKey: obj[1], YFViewComponentSubViewHolderWidthKey: obj[2],YFViewComponentSubViewHolderHeightKey: obj[3], YFViewComponentSubViewHolderBottomKey: obj[4], YFViewComponentSubViewHolderRightKey: obj[5]
          };
        
        [subViewsConfig addObject: configDict];
    }];
    
    NSDictionary * config = @{
                              YFViewComponentSelfHolderWidthKey: holderWidth,
                              YFViewComponentSelfHolderHeightKey: holderHeight,
                              YFViewComponentSubViewsKey: subViewsConfig};
    
    return config;
}

@end
