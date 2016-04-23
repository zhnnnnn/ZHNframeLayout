//
//  UIView+ZHNframeLayout.h
//  ZHNframeLayout
//
//  Created by zhn on 16/4/22.
//  Copyright © 2016年 zhn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZHNframeLayoutMaker.h"

@interface UIView (ZHNframeLayout)

//
- (CGFloat)zhn_left;
- (CGFloat)zhn_right;
- (CGFloat)zhn_top;
- (CGFloat)zhn_bottom;
// 父控件
- (CGFloat)zhn_superLeft;
- (CGFloat)zhn_superRight;
- (CGFloat)zhn_superTop;
- (CGFloat)zhn_superBottom;

- (CGFloat)zhn_centerX;
- (CGFloat)zhn_centerY;
- (CGFloat)zhn_weight;
- (CGFloat)zhn_height;
- (CGPoint)zhn_center;
- (void)ZHN_makeFrame:(void(^)(ZHNframeLayoutMaker * maker))block;
@end
