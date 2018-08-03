//
//  MLD_MediaCell.m
//  InputModule
//
//  Created by MLD on 2018/8/2.
//  Copyright © 2018年 MLD. All rights reserved.
//

#import "MLD_MediaCell.h"

@interface MLD_MediaCell ()

@property (nonatomic, strong)UIImageView *imageView;
@property (nonatomic, strong)UILabel *titleLabel;

@end

@implementation MLD_MediaCell


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
//        self.backgroundColor = [UIColor cyanColor];
        [self initUI];
    }
    return self;
}

- (void)initUI {
    
    [self.contentView addSubview:self.titleLabel];
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(0);
        make.bottom.mas_equalTo(-10);
    }];
    [self.contentView addSubview:self.imageView];
    [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(0);
        make.bottom.equalTo(self.titleLabel.mas_top).offset(-10);
        make.size.mas_equalTo(CGSizeMake(50, 50));
    }];
}

#pragma mark --- lazy load

- (UIImageView *)imageView {
    if (!_imageView) {
        _imageView = [[UIImageView alloc] init];
        _imageView.backgroundColor = [UIColor redColor];
    }
    return _imageView;
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.text = @"测试";
        _titleLabel.textColor = [UIColor lightGrayColor];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.font = [UIFont systemFontOfSize:13];
    }
    return _titleLabel;
}
@end
