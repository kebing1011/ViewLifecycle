//
//  UIView+MISVFL.m
//  ViewLifecycle
//
//  Created by mao on 9/6/15.
//  Copyright (c) 2015 Maokebing. All rights reserved.
//

#import "UIView+MISVFL.h"

@implementation UIView(MISVFL)


- (void)mis_addConstraintsWithVisualFormat:(NSString *)format
									 views:(NSDictionary *)views {
	[self mis_addConstraintsWithVisualFormat:format
									 options:0
									 metrics:nil
									   views:views];
}

- (void)mis_addConstraintsWithVisualFormat:(NSString *)format
								   options:(NSLayoutFormatOptions)options
									 views:(NSDictionary *)views {
	[self mis_addConstraintsWithVisualFormat:format
									 options:options
									 metrics:nil
									   views:views];
}

- (void)mis_addConstraintsWithVisualFormat:(NSString *)format
								   metrics:(NSDictionary *)metrics
									 views:(NSDictionary *)views {
	[self mis_addConstraintsWithVisualFormat:format
									 options:0
									 metrics:metrics
									   views:views];
}

- (void)mis_addConstraintsWithVisualFormat:(NSString *)format
								   options:(NSLayoutFormatOptions)options
								   metrics:(NSDictionary *)metrics
									 views:(NSDictionary *)views {
	[self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:format options:options metrics:metrics views:views]];
}


@end
