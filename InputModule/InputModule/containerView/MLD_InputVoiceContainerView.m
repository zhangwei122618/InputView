//
//  MLD_InputVoiceContainerView.m
//  InputModule
//
//  Created by MLD on 2018/8/2.
//  Copyright © 2018年 MLD. All rights reserved.
//

#import "MLD_InputVoiceContainerView.h"

@interface MLD_InputVoiceContainerView ()

@property (nonatomic, strong)UILabel *titleLabel;
@property (nonatomic, strong)UIButton *startVoiceBtn;
@property (nonatomic, strong)UIButton *continueBtn;
@property (nonatomic, strong)UIButton *resetVoiceBtn;
@property (nonatomic, strong)UIButton *auditionBtn;

@end

@implementation MLD_InputVoiceContainerView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self initUI];
    }
    return self;
}


- (void)initUI {
    
    [self addSubview:self.titleLabel];
    [self addSubview:self.startVoiceBtn];
    [self.startVoiceBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.center.mas_equalTo(0);
        make.size.mas_equalTo(CGSizeMake(100, 100));
    }];
    
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(0);
        make.bottom.equalTo(self.startVoiceBtn.mas_top).offset(-15);
    }];
    
    [self addSubview:self.auditionBtn];
    [self.auditionBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.titleLabel.mas_centerY);
        make.left.equalTo(self.titleLabel.mas_right).offset(10);
    }];
    
    [self addSubview:self.continueBtn];
    [self.continueBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.startVoiceBtn);
        make.right.equalTo(self.startVoiceBtn.mas_left).offset(-30);
        make.size.mas_equalTo(CGSizeMake(50, 50));
    }];
    
    [self addSubview:self.resetVoiceBtn];
    [self.resetVoiceBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.startVoiceBtn);
        make.left.equalTo(self.startVoiceBtn.mas_right).offset(30);
        make.size.mas_equalTo(CGSizeMake(50, 50));
    }];
    
}

- (CGSize)sizeThatFits:(CGSize)size {
    return CGSizeMake(size.width, 216.0);
}


#pragma mark --- lazy load

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.text = @"点击下面图标开始录音";
        _titleLabel.textColor = [UIColor lightGrayColor];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.font = [UIFont systemFontOfSize:12];
    }
    return _titleLabel;
}

- (UIButton *)startVoiceBtn {
    if (!_startVoiceBtn) {
        _startVoiceBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_startVoiceBtn setTitle:@"发送" forState:UIControlStateNormal];
        [_startVoiceBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_startVoiceBtn setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
        [_startVoiceBtn setImage:[UIImage imageNamed:@""] forState:UIControlStateSelected];
        _startVoiceBtn.backgroundColor = [UIColor greenColor];
    }
    return _startVoiceBtn;
}

- (UIButton *)continueBtn {
    if (!_continueBtn) {
        _continueBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_continueBtn setTitle:@"继续" forState:UIControlStateNormal];
        [_continueBtn setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
        [_continueBtn setBackgroundColor:[UIColor whiteColor]];
        _continueBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        _continueBtn.layer.borderColor = [UIColor greenColor].CGColor;
        _continueBtn.layer.borderWidth = 1.0;
        
    }
    return _continueBtn;
}

- (UIButton *)resetVoiceBtn {
    if (!_resetVoiceBtn) {
        _resetVoiceBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_resetVoiceBtn setTitle:@"重录" forState:UIControlStateNormal];
        [_resetVoiceBtn setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
        [_resetVoiceBtn setBackgroundColor:[UIColor whiteColor]];
        _resetVoiceBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        _resetVoiceBtn.layer.borderColor = [UIColor greenColor].CGColor;
        _resetVoiceBtn.layer.borderWidth = 1.0;
        
    }
    return _resetVoiceBtn;
}

- (UIButton *)auditionBtn {
    if (!_auditionBtn) {
        _auditionBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_auditionBtn setTitle:@"试听" forState:UIControlStateNormal];
        [_auditionBtn setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
        _auditionBtn.titleLabel.font = [UIFont systemFontOfSize:12];
    }
    return _auditionBtn;
}


@end






































