//
//  UITableView+MLD.m
//  InputModule
//
//  Created by MLD on 2018/8/3.
//  Copyright © 2018年 MLD. All rights reserved.
//

#import "UITableView+MLD.h"

@implementation UITableView (MLD)


- (void)mld_scrollToBottom:(BOOL)animation {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (0.1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        NSInteger row = [self numberOfRowsInSection:0] - 1;
        if (row > 0) {
            NSIndexPath *indexPath = [NSIndexPath indexPathForRow:row inSection:0];
            [self scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionBottom animated:animation];
        }
    });
}
@end
