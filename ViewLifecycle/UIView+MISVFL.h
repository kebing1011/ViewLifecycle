//
//  UIView+MISVFL.h
//  ViewLifecycle
//
//  Created by mao on 9/6/15.
//  Copyright (c) 2015 Maokebing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView(MISVFL)

- (void)mis_addConstraintsWithVisualFormat:(NSString *)format
									 views:(NSDictionary *)views;

- (void)mis_addConstraintsWithVisualFormat:(NSString *)format
								   options:(NSLayoutFormatOptions)options
									 views:(NSDictionary *)views;

- (void)mis_addConstraintsWithVisualFormat:(NSString *)format
								   metrics:(NSDictionary *)metrics
									 views:(NSDictionary *)views;

- (void)mis_addConstraintsWithVisualFormat:(NSString *)format
								   options:(NSLayoutFormatOptions)options
								   metrics:(NSDictionary *)metrics
									 views:(NSDictionary *)views;

@end
