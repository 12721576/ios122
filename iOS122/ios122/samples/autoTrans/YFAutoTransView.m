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
    NSDictionary * config = @{
                              YFViewComponentSelfHolderWidthKey: @640.0,
                              YFViewComponentSelfHolderHeightKey: @155.0,
                              YFViewComponentSubViewsKey:
  @[@{
      YFViewComponentSubViewClassNameKey: NSStringFromClass([UIImageView class]) ,
      YFViewComponentSubViewPropNameKey: @"imageView", YFViewComponentSubViewHolderWidthKey: @160, YFViewComponentSubViewHolderHeightKey: @120, YFViewComponentSubViewHolderBottomKey: @140, YFViewComponentSubViewHolderRightKey: @180
      },
  @{
        YFViewComponentSubViewClassNameKey: NSStringFromClass([UILabel class]),
        YFViewComponentSubViewPropNameKey: @"titleLabel", YFViewComponentSubViewHolderWidthKey: @420, YFViewComponentSubViewHolderHeightKey: @31, YFViewComponentSubViewHolderBottomKey: @55, YFViewComponentSubViewHolderRightKey: @615
        },
  @{
        YFViewComponentSubViewClassNameKey: NSStringFromClass([UILabel class]) ,
        YFViewComponentSubViewPropNameKey: @"detailLabel", YFViewComponentSubViewHolderWidthKey: @410, YFViewComponentSubViewHolderHeightKey: @60, YFViewComponentSubViewHolderBottomKey: @136, YFViewComponentSubViewHolderRightKey: @605
        },
  @{
        YFViewComponentSubViewClassNameKey: NSStringFromClass([UIButton class]) ,
        YFViewComponentSubViewPropNameKey: @"chatBtn", YFViewComponentSubViewHolderWidthKey: @120, YFViewComponentSubViewHolderHeightKey: @28, YFViewComponentSubViewHolderBottomKey: @141, YFViewComponentSubViewHolderRightKey: @628
        }]
    };
    
    return config;
}

@end
