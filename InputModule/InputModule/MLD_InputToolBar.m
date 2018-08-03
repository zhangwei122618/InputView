//
//  MLD_InputToolBar.m
//  InputModule
//
//  Created by MLD on 2018/8/1.
//  Copyright © 2018年 MLD. All rights reserved.
//

#import "MLD_InputToolBar.h"

@interface MLD_InputToolBar ()

@property (nonatomic, copy)NSArray *buttons;
@property (nonatomic, strong)UIView *bottomLine;

@end

@implementation MLD_InputToolBar

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        /*
        [self addSubview:self.voiceBtn];
        [self addSubview:self.textBtn];
        [self addSubview:self.materialBtn];
        [self addSubview:self.managerBtn];
        self.buttons = @[self.voiceBtn,self.textBtn,self.materialBtn,self.managerBtn];
        
        [self.buttons mas_distributeViewsAlongAxis:MASAxisTypeHorizontal withFixedSpacing:15 leadSpacing:15 tailSpacing:15];
        [self.buttons mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(0);
        }];
        */
        // 上线
        UIView *topLine = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.mld_width, 0.5)];
        topLine.backgroundColor = [UIColor lightGrayColor];
        [self addSubview:topLine];
        
        // 下线
        _bottomLine = [[UIView alloc] initWithFrame:CGRectZero];
        _bottomLine.backgroundColor = [UIColor lightGrayColor];
        [self addSubview:_bottomLine];
        
    }
    return self;
}

- (CGSize)sizeThatFits:(CGSize)size {
    
    return CGSizeMake(size.width, 51);
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    NSArray *buttons = [self getButtons];
    CGFloat btnWidth = self.mld_width / buttons.count;
    CGFloat btnHeight = self.mld_height - 1;
    for (NSInteger i = 0; i < buttons.count; i++) {
        UIButton *btn = buttons[i];
        if (!btn.superview) {
            [self addSubview:btn];
        }
        btn.frame = CGRectMake(btnWidth * i, 0.5, btnWidth, btnHeight);
    }
    
    // 底部分割线
    CGFloat lineHeight = 0.5;
    _bottomLine.mld_size = CGSizeMake(self.mld_width, lineHeight);
    _bottomLine.mld_bottom = self.mld_height - lineHeight;
    
}

- (NSArray <UIButton *> *)getButtons {
    
    return @[self.voiceBtn,self.textBtn,self.materialBtn,self.managerBtn];
}

#pragma mark ---

- (UIButton *)voiceBtn {
    if (!_voiceBtn) {
        _voiceBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_voiceBtn setTitle:@"语音" forState:UIControlStateNormal];
        [_voiceBtn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
        [_voiceBtn setTitleColor:[UIColor greenColor] forState:UIControlStateSelected];
        [_voiceBtn setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
        [_voiceBtn setImage:[UIImage imageNamed:@""] forState:UIControlStateSelected];
        _voiceBtn.titleLabel.font = [UIFont systemFontOfSize:15];
    }
    return _voiceBtn;
}

- (UIButton *)textBtn {
    if (!_textBtn) {
        _textBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_textBtn setTitle:@"文字" forState:UIControlStateNormal];
        [_textBtn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
        [_textBtn setTitleColor:[UIColor greenColor] forState:UIControlStateSelected];
        [_textBtn setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
        [_textBtn setImage:[UIImage imageNamed:@""] forState:UIControlStateSelected];
        _textBtn.titleLabel.font = [UIFont systemFontOfSize:15];
    }
    return _textBtn;
}

- (UIButton *)materialBtn {
    if (!_materialBtn) {
        _materialBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_materialBtn setTitle:@"素材" forState:UIControlStateNormal];
        [_materialBtn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
        [_materialBtn setTitleColor:[UIColor greenColor] forState:UIControlStateSelected];
        [_materialBtn setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
        [_materialBtn setImage:[UIImage imageNamed:@""] forState:UIControlStateSelected];
        _materialBtn.titleLabel.font = [UIFont systemFontOfSize:15];
    }
    return _materialBtn;
}

- (UIButton *)managerBtn {
    if (!_managerBtn) {
        _managerBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_managerBtn setTitle:@"管理" forState:UIControlStateNormal];
        [_managerBtn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
        [_managerBtn setTitleColor:[UIColor greenColor] forState:UIControlStateSelected];
        [_managerBtn setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
        [_managerBtn setImage:[UIImage imageNamed:@""] forState:UIControlStateSelected];
        _managerBtn.titleLabel.font = [UIFont systemFontOfSize:15];
    }
    return _managerBtn;
}

@end
