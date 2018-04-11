//
//  ViewController.m
//  B
//
//  Created by roger wu on 10/04/2018.
//  Copyright © 2018 cocoaroger. All rights reserved.
//

#import "ViewController.h"
#import "BViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *testButton = [UIButton new];
    [testButton setTitle:@"进入BViewController" forState:UIControlStateNormal];
    [testButton sizeToFit];
    [testButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    testButton.center = CGPointMake(200, 200);
    [testButton addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:testButton];
}

- (void)buttonAction:(UIButton *)button {
    UIViewController *vc = [[BViewController alloc] initWithText:@"测试进入显示文字"];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
