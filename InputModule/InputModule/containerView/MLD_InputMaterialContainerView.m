//
//  MLD_InputMaterialContainerView.m
//  InputModule
//
//  Created by MLD on 2018/8/2.
//  Copyright © 2018年 MLD. All rights reserved.
//

#import "MLD_InputMaterialContainerView.h"
#import "MLD_MediaContainerView.h"

#define mediaID @"mediaCell"

@interface MLD_InputMaterialContainerView ()<MLD_MediaContainerViewDelegate>

@property (nonatomic, strong)MLD_MediaContainerView *mediaView;

@end
@implementation MLD_InputMaterialContainerView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self initUI];
        
    }
    return self;
}

- (void)initUI {
    
    [self addSubview:self.mediaView];
}

- (void)didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
}

#pragma mark --- lazy load

- (MLD_MediaContainerView *)mediaView {
    if (!_mediaView) {
        _mediaView = [[MLD_MediaContainerView alloc] initWithFrame:self.frame];
        _mediaView.delegate = self;
    }
    return _mediaView;
}

@end



























