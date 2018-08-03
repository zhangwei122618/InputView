//
//  UIView+MLD.h
//  InputModule
//
//  Created by MLD on 2018/8/1.
//  Copyright © 2018年 MLD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (MLD)

@property (nonatomic, assign)CGFloat mld_left;
@property (nonatomic, assign)CGFloat mld_right;
@property (nonatomic, assign)CGFloat mld_top;
@property (nonatomic, assign)CGFloat mld_bottom;

@property (nonatomic, assign)CGFloat mld_width;
@property (nonatomic, assign)CGFloat mld_height;

@property (nonatomic, assign)CGFloat mld_centerX;
@property (nonatomic, assign)CGFloat mld_centerY;

@property (nonatomic, assign)CGPoint mld_origin;
@property (nonatomic, assign)CGSize mld_size;

- (UIViewController *)mld_fromViewController;

@end
