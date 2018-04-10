//
//  BViewController.m
//  B
//
//  Created by roger wu on 10/04/2018.
//  Copyright © 2018 cocoaroger. All rights reserved.
//

#import "BViewController.h"

@interface BViewController ()

@property (strong, nonatomic) UILabel *showLabel;

@end

@implementation BViewController

- (instancetype)initWithText:(NSString *)text {
    self = [super init];
    if (self) {
        self.showLabel.text = text;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"BViewController";
    [self setupViews];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    [_showLabel sizeToFit];
    _showLabel.center = self.view.center;
}

- (void)setupViews {
    _showLabel = [UILabel new];
    _showLabel.textColor = [UIColor redColor];
    [self.view addSubview:_showLabel];
}

@end
