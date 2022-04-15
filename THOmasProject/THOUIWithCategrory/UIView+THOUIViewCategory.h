//
//  UIView+THOUIViewCategory.h
//  THOmasProject
//
//  Created by nan meng on 2021/11/14.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (THOUIViewCategory)

@property (assign, nonatomic) CGFloat x;
@property (assign, nonatomic) CGFloat y;
@property (assign, nonatomic) CGFloat centerX;
@property (assign, nonatomic) CGFloat centerY;
@property (assign, nonatomic) CGFloat width;
@property (assign, nonatomic) CGFloat height;
@property (assign, nonatomic) CGFloat scrrenWidth;
@property (assign, nonatomic) CGFloat scrrenHeight;
@property (assign, nonatomic) CGSize size;
@property (assign, nonatomic) CGFloat left;
@property (assign, nonatomic) CGFloat right;
@property (assign, nonatomic) CGFloat top;
@property (assign, nonatomic) CGFloat bottom;

@end

NS_ASSUME_NONNULL_END
