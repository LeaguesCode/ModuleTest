//
//  UIView+Frame.h
//  zhixue
//
//  Created by admin on 16/5/16.
//  Copyright © 2016年 iflytek. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Frame)

@property (nonatomic) CGFloat x;
@property (nonatomic) CGFloat y;
@property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat height;

@property (nonatomic) CGFloat centerX;
@property (nonatomic) CGFloat centerY;

@property (nonatomic) CGSize size;
@property (nonatomic) CGPoint origin;

@property (nonatomic) CGFloat maxX;
@property (nonatomic) CGFloat maxY;

@end


@interface UIScrollView (Frame)
@property (nonatomic) CGFloat insetTop;
@property (nonatomic) CGFloat insetBottom;
@property (nonatomic) CGFloat insetLeft;
@property (nonatomic) CGFloat insetRight;
@property (nonatomic) CGFloat offsetX;
@property (nonatomic) CGFloat offsetY;
@property (nonatomic) CGFloat contentWidth;
@property (nonatomic) CGFloat contentHeight;
@end

NS_ASSUME_NONNULL_END