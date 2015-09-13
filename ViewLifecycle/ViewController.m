//
//  ViewController.m
//  ViewLifecycle
//
//  Created by mao on 9/6/15.
//  Copyright (c) 2015 Maokebing. All rights reserved.
//

#import "ViewController.h"
#import "MyViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	self.view.backgroundColor = [UIColor whiteColor];
	
	self.title = @"ViewLifecycle";
	
	UIButton* button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	button.bounds = CGRectMake(0, 0, 200, 100);
	button.center = self.view.center;
	[button setTitle:@"Push New Page" forState:UIControlStateNormal];
	[button addTarget:self action:@selector(openPage:) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:button];
}
- (void)openPage:(id)sender {
	MyViewController* controller = [[MyViewController alloc] init];
	controller.hidesBottomBarWhenPushed = YES;
	[self.navigationController pushViewController:controller animated:YES];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
