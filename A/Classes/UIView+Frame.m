//
//  UIView+Frame.m
//  zhixue
//
//  Created by admin on 16/5/16.
//  Copyright © 2016年 iflytek. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)

#pragma -mark x, y, width, height
- (void)setX:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)x {
    return self.frame.origin.x;
}

- (void)setY:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)y {
    return self.frame.origin.y;
}

- (void)setWidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)width {
    return self.frame.size.width;
}

- (void)setHeight:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat)height {
    return self.frame.size.height;
}

#pragma -mark Center
- (void)setCenterX:(CGFloat)centerX {
    self.center = CGPointMake(centerX, self.center.y);
}

- (CGFloat)centerX {
    return self.center.x;
}

- (void)setCenterY:(CGFloat)centerY {
    self.center = CGPointMake(self.center.x, centerY);
}

- (CGFloat)centerY {
    return self.center.y;
}

#pragma mark - origin and size
- (void)setOrigin:(CGPoint)origin {
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGPoint)origin {
    return self.frame.origin;
}

- (void)setSize:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (CGSize)size {
    return self.frame.size;
}

#pragma -mark max
- (void)setMaxX:(CGFloat)maxX {
    CGRect frame = self.frame;
    frame.origin.x = maxX - frame.size.width;
    self.frame = frame;
}

- (CGFloat)maxX {
    return CGRectGetMaxX(self.frame);
}

- (void)setMaxY:(CGFloat)maxY {
    CGRect frame = self.frame;
    frame.origin.y = maxY - frame.size.height;
    self.frame = frame;
}

- (CGFloat)maxY {
    return CGRectGetMaxY(self.frame);
}

@end

@implementation UIScrollView (Frame)

- (CGFloat)insetTop {
    return self.contentInset.top;
}

- (void)setInsetTop:(CGFloat)insetTop {
    self.contentInset = UIEdgeInsetsMake(insetTop, self.contentInset.left, self.contentInset.bottom, self.contentInset.right);
}

- (CGFloat)insetBottom {
    return self.contentInset.bottom;
}

- (void)setInsetBottom:(CGFloat)insetBottom {
    self.contentInset = UIEdgeInsetsMake(self.contentInset.top, self.contentInset.left, insetBottom, self.contentInset.right);
}

- (CGFloat)insetLeft {
    return self.contentInset.left;
}

- (void)setInsetLeft:(CGFloat)insetLeft {
    self.contentInset = UIEdgeInsetsMake(self.contentInset.top, insetLeft, self.contentInset.bottom, self.contentInset.right);
}

- (CGFloat)insetRight {
    return self.contentInset.right;
}

- (void)setInsetRight:(CGFloat)insetRight {
        self.contentInset = UIEdgeInsetsMake(self.contentInset.top, self.contentInset.left, self.contentInset.bottom, insetRight);
}

- (CGFloat)offsetX {
    return self.contentOffset.x;
}

- (void)setOffsetX:(CGFloat)offsetX {
    self.contentOffset = CGPointMake(offsetX, self.contentOffset.y);
}

- (CGFloat)offsetY {
    return self.contentOffset.y;
}

- (void)setOffsetY:(CGFloat)offsetY {
    self.contentOffset = CGPointMake(self.contentOffset.x, offsetY);
}

- (CGFloat)contentWidth {
    return self.contentSize.width;
}

- (void)setContentWidth:(CGFloat)contentWidth {
    self.contentSize = CGSizeMake(contentWidth, self.contentSize.height);
}

- (CGFloat)contentHeight {
    return self.contentSize.height;
}

- (void)setContentHeight:(CGFloat)contentHeight {
    self.contentSize = CGSizeMake(self.contentSize.width, contentHeight);
}

@end
