//
//  MLD_InputView.h
//  InputModule
//
//  Created by MLD on 2018/8/1.
//  Copyright © 2018年 MLD. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MLD_InputToolBar.h"

@class MLD_InputTextContainerView;
@class MLD_InputManagerContainerView;
@class MLD_InputMaterialContainerView;
@class MLD_InputVoiceContainerView;

@interface MLD_InputView : UIView

@property (nonatomic, strong)MLD_InputToolBar *toolBar;

@property (nonatomic, strong)MLD_InputVoiceContainerView *voiceContainerView;
@property (nonatomic, strong)MLD_InputTextContainerView *textContainerView;
@property (nonatomic, strong)MLD_InputMaterialContainerView *materialContainerView;
@property (nonatomic, strong)MLD_InputManagerContainerView *managerContainerView;

@property (nonatomic, assign)MLD_TooBarItemType itemType;

@end
