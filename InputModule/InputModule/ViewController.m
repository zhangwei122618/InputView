//
//  ViewController.m
//  InputModule
//
//  Created by MLD on 2018/8/1.
//  Copyright © 2018年 MLD. All rights reserved.
//

#import "ViewController.h"
#import "MLD_InputToolBar.h"
#import "MLD_InputMaterialContainerView.h"

#import "MLD_InputVoiceContainerView.h"
#import "MLD_InputView.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic, strong)MLD_InputToolBar *toolBar;
@property(nonatomic, strong)MLD_InputView *mld_InputView;
@property (nonatomic, strong)UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    self.navigationController.navigationBar.translucent = NO;
    [self initUI];
    
}

- (void)initUI {

    [self.view addSubview:self.mld_InputView];
    UIEdgeInsets safeAreaInset = UIEdgeInsetsZero;
    if (@available(iOS 11.0, *)) {
        
        safeAreaInset = self.view.safeAreaInsets;
    }
    self.mld_InputView.mld_bottom = self.view.mld_height - safeAreaInset.bottom;
//    self.mld_InputView.mld_bottom = self.view.mld_height;
//    [self.view addSubview:self.tableView];
//    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cellid"];
//    self.tableView.mld_height = self.view.mld_height - self.mld_InputView.toolBar.mld_height;
    
    _toolBar = [[MLD_InputToolBar alloc] initWithFrame:CGRectMake(0, 100, self.view.mld_width, 0)];
    [self.view addSubview:_toolBar];
    _toolBar.mld_size = [_toolBar sizeThatFits:CGSizeMake(self.view.mld_width, CGFLOAT_MAX)];
    _toolBar.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    
    
    
}

#pragma mark ---

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellid"];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44;
}

#pragma mark --- lazy load

- (MLD_InputView *)mld_InputView {
    if (!_mld_InputView) {
        _mld_InputView = [[MLD_InputView alloc] initWithFrame:CGRectMake(0, 0, self.view.mld_width, 0)];
//        _mld_InputView.mld_bottom = self.view.mld_height;
        _mld_InputView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin;
    }
    return _mld_InputView;
}

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.estimatedRowHeight = 0;
        _tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        
    }
    return _tableView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end



























