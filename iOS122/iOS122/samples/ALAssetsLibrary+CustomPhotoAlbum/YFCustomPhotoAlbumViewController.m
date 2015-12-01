//
//  YFCustomPhotoAlbumViewController.m
//  iOS122
//
//  Created by 颜风 on 15/12/1.
//  Copyright © 2015年 iOS122. All rights reserved.
//

#import "YFCustomPhotoAlbumViewController.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import "ALAssetsLibrary+CustomPhotoAlbum.h"

@implementation YFCustomPhotoAlbumViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    SDWebImageManager * manager = [SDWebImageManager sharedManager];
    
    NSURL * url = [NSURL URLWithString: @"http://yun.mochi.shufawu.com/hd_data/201587/105111/o_19s31334ve4m138a1b2b1c86aj7g"];
    [manager downloadImageWithURL: url options: 0 progress:^(NSInteger receivedSize, NSInteger expectedSize) {
        NSLog(@"%g", receivedSize * 1.0 / expectedSize);
    } completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, BOOL finished, NSURL *imageURL) {
        if (nil != error) {
            NSLog(@"%@", error);
            
            return;
        }
        
        ALAssetsLibrary * library = [[ALAssetsLibrary alloc] init];
        
        [library saveImage:image toAlbum:@"iOS122" withCompletionBlock:^(NSURL *assetUrl, NSError *error) {
            NSLog(@"%@ %@", assetUrl, error);
        }];
    }];
}
@end
