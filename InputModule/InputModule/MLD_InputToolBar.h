//
//  MLD_InputToolBar.h
//  InputModule
//
//  Created by MLD on 2018/8/1.
//  Copyright © 2018年 MLD. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger,MLD_TooBarItemType) {
    MLD_TooBarItemTypeVoice,
    MLD_TooBarItemTypeText,
    MLD_TooBarItemTypeMaterial,
    MLD_TooBarItemTypeManager
};
@interface MLD_InputToolBar : UIView

@property (nonatomic, strong)UIButton *voiceBtn;
@property (nonatomic, strong)UIButton *textBtn;
@property (nonatomic, strong)UIButton *materialBtn;
@property (nonatomic, strong)UIButton *managerBtn;

@end
