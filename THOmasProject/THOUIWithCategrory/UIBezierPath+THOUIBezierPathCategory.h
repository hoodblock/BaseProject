//
//  UIBezierPath+THOUIBezierPathCategory.h
//  THOmasProject
//
//  Created by nan meng on 2021/11/14.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIBezierPath (THOUIBezierPathCategory)

+ (UIBezierPath*)drawWireLine:(NSMutableArray*)linesArray;

+ (NSMutableArray<__kindof UIBezierPath*>*)drawLines:(NSMutableArray<NSMutableArray*>*)linesArray;

+ (UIBezierPath *)drawKLine:(CGFloat)open close:(CGFloat)close high:(CGFloat)high low:(CGFloat)low candleWidth:(CGFloat)candleWidth xPostion:(CGFloat)xPostion lineWidth:(CGFloat)lineWidth;

@end

NS_ASSUME_NONNULL_END
