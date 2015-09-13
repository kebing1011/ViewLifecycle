//
//  MyViewController.m
//  ViewLifecycle
//
//  Created by mao on 9/6/15.
//  Copyright (c) 2015 Maokebing. All rights reserved.
//

#define __LOG_FUNC__  printf("%s\n", __func__);
#define __LOG_FUNC_FRAME(__FRAME) printf("%s, frame:(%0.f, %0.f, %0.f, %0.f)\n", __func__, __FRAME.origin.x, __FRAME.origin.y, __FRAME.size.width, __FRAME.size.height);






#import "MyViewController.h"

@interface MyView : UIView


@end

@implementation MyView

- (instancetype)initWithFrame:(CGRect)frame {
	self = [super initWithFrame:frame];
	if (self) {
		__LOG_FUNC_FRAME(frame)
	}
	return self;
}

- (instancetype)init {
	self = [super init];
	if (self) {
		__LOG_FUNC__
	}
	return self;
}

- (void)setFrame:(CGRect)frame {
	[super setFrame:frame];
	__LOG_FUNC_FRAME(frame)
}

- (void)dealloc {
	__LOG_FUNC__
}

- (void)layoutSubviews {
	[super layoutSubviews];
	
	__LOG_FUNC__
}

- (UIEdgeInsets)layoutMargins {
	
	__LOG_FUNC__
	
	return [super layoutMargins];
}

- (void)drawRect:(CGRect)rect {
	__LOG_FUNC__

	[super drawRect:rect];
}

- (CGSize)sizeThatFits:(CGSize)size {
	__LOG_FUNC__
	return [super sizeThatFits:size];
}

- (void)sizeToFit {
	__LOG_FUNC__
	[super sizeToFit];
	
}

@end



@interface MyViewController ()

@end

@implementation MyViewController

- (instancetype)init {
	self = [super init];
	if (self) {
		__LOG_FUNC__
//		self.edgesForExtendedLayout = UIRectEdgeNone;
	}
	return self;
}

- (void)dealloc {
	__LOG_FUNC__
}

- (void)viewDidLoad {
	[super viewDidLoad];
	
	__LOG_FUNC_FRAME(self.view.frame)
	
	
}

- (void)viewWillAppear:(BOOL)animated{
	[super viewWillAppear:animated];
	
	UIView* sbview = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 375.0f, 100)];
	sbview.backgroundColor = [UIColor greenColor];
	
	[self.view addSubview:sbview];
	
	__LOG_FUNC_FRAME(self.view.frame)
}
- (void)viewDidAppear:(BOOL)animated{
	[super viewDidAppear:animated];
	
	__LOG_FUNC_FRAME(self.view.frame)
}
- (void)viewWillDisappear:(BOOL)animated {
	[super viewWillDisappear:animated];
	__LOG_FUNC_FRAME(self.view.frame)
}
- (void)viewDidDisappear:(BOOL)animated{
	[super viewDidDisappear:animated];
	__LOG_FUNC_FRAME(self.view.frame)
}

- (void)viewWillLayoutSubviews{
	[super viewWillLayoutSubviews];
	__LOG_FUNC__
}

- (void)viewDidLayoutSubviews{
	[super viewDidLayoutSubviews];
	__LOG_FUNC__
}

- (void)loadView {
	UIView* view = [[MyView alloc] init];
	self.view = view;
	self.view.backgroundColor = [UIColor lightGrayColor];
	
	__LOG_FUNC_FRAME(self.view.frame)
}

@end
