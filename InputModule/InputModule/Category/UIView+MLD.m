//
//  UIView+MLD.m
//  InputModule
//
//  Created by MLD on 2018/8/1.
//  Copyright © 2018年 MLD. All rights reserved.
//

#import "UIView+MLD.h"

@implementation UIView (MLD)

- (CGFloat)mld_left {
    return self.frame.origin.x;
}

- (void)setMld_left:(CGFloat)mld_left {
    CGRect frame = self.frame;
    frame.origin.x = mld_left;
    self.frame = frame;
}

- (CGFloat)mld_right {
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setMld_right:(CGFloat)mld_right {
    
    CGRect frame = self.frame;
    frame.origin.x = mld_right - frame.size.width;
    self.frame = frame;
}

- (CGFloat)mld_top {
    
    return self.frame.origin.y;
}

- (void)setMld_top:(CGFloat)mld_top {
    CGRect frame = self.frame;
    frame.origin.y = mld_top;
    self.frame = frame;
}

- (CGFloat)mld_bottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setMld_bottom:(CGFloat)mld_bottom {
    CGRect frame = self.frame;
    frame.origin.y = mld_bottom - frame.size.height;
    self.frame = frame;
}

- (CGFloat)mld_width {
    return self.frame.size.width;
}

- (void)setMld_width:(CGFloat)mld_width {
    CGRect frame = self.frame;
    frame.size.width = mld_width;
    self.frame = frame;
}

- (CGFloat)mld_height {
    return self.frame.size.height;
}

- (void)setMld_height:(CGFloat)mld_height {
    CGRect frame = self.frame;
    frame.size.height = mld_height;
    self.frame = frame;
}

- (CGFloat)mld_centerX {
    return self.center.x;
}

- (void)setMld_centerX:(CGFloat)mld_centerX {
    CGPoint center = self.center;
    center.x = mld_centerX;
    self.center = center;
}

- (CGFloat)mld_centerY {
    return self.center.y;
}

- (void)setMld_centerY:(CGFloat)mld_centerY {
    CGPoint center = self.center;
    center.y = mld_centerY;
    self.center = center;
}

- (CGPoint)mld_origin {
    return self.frame.origin;
}

- (void)setMld_origin:(CGPoint)mld_origin {
    CGRect frame = self.frame;
    frame.origin = mld_origin;
    self.frame = frame;
}

- (CGSize)mld_size {
    return self.frame.size;
}

- (void)setMld_size:(CGSize)mld_size {
    CGRect frame = self.frame;
    frame.size = mld_size;
    self.frame = frame;
}

- (UIViewController *)mld_fromViewController {
    
    id response = self.nextResponder;
    while (![response isKindOfClass:[UIViewController class]] &&
           ![response isKindOfClass:[UIWindow class]]) {
        response = [response nextResponder];
    }
    if ([response isKindOfClass:[UIViewController class]]) {
        return (UIViewController *)response;
    }
    else
    {
        return nil;
    }
}
@end


























