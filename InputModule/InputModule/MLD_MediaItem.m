//
//  MLD_MediaItem.m
//  InputModule
//
//  Created by MLD on 2018/8/2.
//  Copyright © 2018年 MLD. All rights reserved.
//

#import "MLD_MediaItem.h"

@implementation MLD_MediaItem


+ (MLD_MediaItem *)item:(SEL)selector normalImage:(UIImage *)normalImage selectedImage:(UIImage *)selectedImage title:(NSString *)title {
    
    MLD_MediaItem *item = [[MLD_MediaItem alloc] init];
    item.selector = selector;
    item.normalImage = normalImage;
    item.selectedImage = selectedImage;
    item.title = title;
    return item;
}

@end
