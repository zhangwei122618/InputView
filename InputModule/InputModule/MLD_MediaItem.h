//
//  MLD_MediaItem.h
//  InputModule
//
//  Created by MLD on 2018/8/2.
//  Copyright © 2018年 MLD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MLD_MediaItem : NSObject

@property (nonatomic, strong)UIImage *normalImage;
@property (nonatomic, strong)UIImage *selectedImage;

@property (nonatomic, copy)NSString *title;

@property (nonatomic, assign)SEL selector;

+ (MLD_MediaItem *)item:(SEL)selector
            normalImage:(UIImage *)normalImage
          selectedImage:(UIImage *)selectedImage title:(NSString *)title;
@end
