//
//  MLD_InputView.m
//  InputModule
//
//  Created by MLD on 2018/8/1.
//  Copyright © 2018年 MLD. All rights reserved.
//

#import "MLD_InputView.h"

#import "MLD_InputTextContainerView.h"
#import "MLD_InputManagerContainerView.h"
#import "MLD_InputMaterialContainerView.h"
#import "MLD_InputVoiceContainerView.h"

@implementation MLD_InputView


- (void)didMoveToWindow {
    
    [self initUI];
}

- (void)initUI {
    
    [self addSubview:self.toolBar];
    // 设置toolbar上item的action
    [self setupActions];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.voiceContainerView.mld_top = self.toolBar.mld_bottom;
    self.textContainerView.mld_top = self.toolBar.mld_bottom;
    self.materialContainerView.mld_top = self.toolBar.mld_bottom;
    self.managerContainerView.mld_top = self.toolBar.mld_bottom;
    
}

- (CGSize)sizeThatFits:(CGSize)size {
    
    CGFloat toolbarHeight = self.toolBar.mld_height;
    CGFloat containerHeight = 0;
    switch (self.itemType) {
        case MLD_TooBarItemTypeVoice:
        {
            containerHeight = self.voiceContainerView.mld_height;
        }
            break;
        case MLD_TooBarItemTypeText:
        {
            containerHeight = self.textContainerView.mld_height;
        }
            break;
        case MLD_TooBarItemTypeMaterial:
        {
            containerHeight = self.materialContainerView.mld_height;
        }
            break;
        case MLD_TooBarItemTypeManager:
        {
            containerHeight = self.managerContainerView.mld_height;
        }
            break;
        default:
            break;
    }
    
    CGFloat height = toolbarHeight + containerHeight;
    CGFloat width = self.superview ? self.superview.mld_width : self.mld_width;
    return CGSizeMake(width, height);
}

- (void)setupActions {
    
    [self.toolBar.voiceBtn addTarget:self action:@selector(voiceBtnHandle:) forControlEvents:UIControlEventTouchUpInside];
    [self.toolBar.textBtn addTarget:self action:@selector(textBtnHandle:) forControlEvents:UIControlEventTouchUpInside];
    [self.toolBar.materialBtn addTarget:self action:@selector(materialBtnHandle:) forControlEvents:UIControlEventTouchUpInside];
    [self.toolBar.managerBtn addTarget:self action:@selector(managerBtnHandle:) forControlEvents:UIControlEventTouchUpInside];
    self.toolBar.mld_size = [self.toolBar sizeThatFits:CGSizeMake(self.mld_width, CGFLOAT_MAX)];
    self.toolBar.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    [self sizeToFit];
}

#pragma mark --- actions

- (void)voiceBtnHandle:(UIButton *)sender {
    [self bringSubviewToFront: self.voiceContainerView];
    self.voiceContainerView.hidden = NO;
    self.textContainerView.hidden = YES;
    self.materialContainerView.hidden = YES;
    self.managerContainerView.hidden = YES;
    [self sizeToFit];
}
- (void)textBtnHandle:(UIButton *)sender {
    [self bringSubviewToFront: self.textContainerView];
    self.voiceContainerView.hidden = YES;
    self.textContainerView.hidden = NO;
    self.materialContainerView.hidden = YES;
    self.managerContainerView.hidden = YES;
    [self sizeToFit];
}
- (void)materialBtnHandle:(UIButton *)sender {
    
    [self bringSubviewToFront: self.materialContainerView];
    self.voiceContainerView.hidden = YES;
    self.textContainerView.hidden = YES;
    self.materialContainerView.hidden = NO;
    self.managerContainerView.hidden = YES;
    [self sizeToFit];
}
- (void)managerBtnHandle:(UIButton *)sender {
    
    [self bringSubviewToFront: self.managerContainerView];
    self.voiceContainerView.hidden = YES;
    self.textContainerView.hidden = YES;
    self.materialContainerView.hidden = YES;
    self.managerContainerView.hidden = NO;
    [self sizeToFit];
}

#pragma mark --- lazy load

- (MLD_InputToolBar *)toolBar {
    if (!_toolBar) {
        _toolBar = [[MLD_InputToolBar alloc] initWithFrame:CGRectMake(0, 0, self.mld_width, 0)];
    }
    return _toolBar;
}


- (MLD_InputVoiceContainerView *)voiceContainerView {
    if (!_voiceContainerView) {
        _voiceContainerView = [[MLD_InputVoiceContainerView alloc] initWithFrame:CGRectZero];
        _voiceContainerView.mld_size = [_voiceContainerView sizeThatFits:CGSizeMake(self.mld_width, CGFLOAT_MAX)];
        _voiceContainerView.hidden = YES;
    }
    return _voiceContainerView;
}

- (MLD_InputTextContainerView *)textContainerView {
    if (!_textContainerView) {
        _textContainerView = [[MLD_InputTextContainerView alloc] initWithFrame:CGRectZero];
        _textContainerView.mld_size = [_textContainerView sizeThatFits:CGSizeMake(self.mld_width, CGFLOAT_MAX)];
        _textContainerView.hidden = YES;
    }
    return _textContainerView;
}

- (MLD_InputMaterialContainerView *)materialContainerView {
    if (!_materialContainerView) {
        _materialContainerView = [[MLD_InputMaterialContainerView alloc] initWithFrame:CGRectZero];
        _materialContainerView.mld_size = [_materialContainerView sizeThatFits:CGSizeMake(self.mld_width, CGFLOAT_MAX)];
        _materialContainerView.hidden = YES;
    }
    return _materialContainerView;
}

- (MLD_InputManagerContainerView *)managerContainerView {
    if (!_managerContainerView) {
        _managerContainerView = [[MLD_InputManagerContainerView alloc] initWithFrame:CGRectZero];
        _managerContainerView.mld_size = [_managerContainerView sizeThatFits:CGSizeMake(self.mld_width, CGFLOAT_MAX)];
        _managerContainerView.hidden = YES;
    }
    return _managerContainerView;
}


@end
