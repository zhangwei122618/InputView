//
//  MLD_MediaContainerView.h
//  InputModule
//
//  Created by MLD on 2018/8/2.
//  Copyright © 2018年 MLD. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MLD_MediaContainerViewDelegate <NSObject>

- (void)didSelectItemAtIndexPath:(NSIndexPath *)indexPath;

@end
@interface MLD_MediaContainerView : UIView

@property (nonatomic, strong)NSMutableArray *dataSource;

@property (nonatomic, weak)id <MLD_MediaContainerViewDelegate>delegate;

@end
