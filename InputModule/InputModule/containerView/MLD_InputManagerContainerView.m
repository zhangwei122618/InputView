//
//  MLD_InputManagerContainerView.m
//  InputModule
//
//  Created by MLD on 2018/8/2.
//  Copyright © 2018年 MLD. All rights reserved.
//

#import "MLD_InputManagerContainerView.h"
#import "MLD_MediaContainerView.h"
@interface MLD_InputManagerContainerView ()<MLD_MediaContainerViewDelegate>

@property (nonatomic, strong)MLD_MediaContainerView *mediaView;

@end

@implementation MLD_InputManagerContainerView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self initUI];
    }
    return self;
}

#pragma mark --- MLD_MediaContainerViewDelegate
- (void)didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
}

- (void)initUI {
    [self addSubview:self.mediaView];
}

- (MLD_MediaContainerView *)mediaView {
    if (!_mediaView) {
        _mediaView = [[MLD_MediaContainerView alloc] initWithFrame:self.frame];
        _mediaView.delegate = self;
    }
    return _mediaView;
}

@end
