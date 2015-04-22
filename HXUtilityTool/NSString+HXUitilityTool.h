//
//  NSString+HXUitilityTool.h
//  UitilityTool
//
//  Created by huangxiong on 15/4/17.
//  Copyright (c) 2015年 New_Life. All rights reserved.
//


#import "HXExternalDependent.h"

@interface NSString (HXUitilityTool)

#pragma mark---数值转换
/**
 *  @brief: 将 unsigned int 类型转换成 NSString
 *  @param: value 为 unsigned int 类型的值
 *  @return: NSString 对象
 */
+ (instancetype) stringWithUnInt: (unsigned int) value;

/**
 *  @brief: 将 int 类型转换成 NSString
 *  @param: value 为 int 类型的值
 *  @return: NSString 对象
 */
+ (instancetype) stringWithInt: (int) value;

/**
 *  @brief: 将 long 类型转换成 NSString
 *  @param: value 为 long 类型的值
 *  @return: NSString 对象
 */
+ (instancetype) stringWithLong: (long) value;

/**
 *  @brief: 将 float 类型转换成 NSString
 *  @param: value 为 float 类型的值
 *  @return: NSString 对象
 */
+ (instancetype) stringWithFloat: (float) value;

/**
 *  @brief: 将 long 类型转换成 NSString
 *  @param: value 为 long 类型的值
 *  @return: NSString 对象
 */
+ (instancetype) stringWithDouble: (double) value;

#pragma mark---计算文本尺寸
/***
 *  @brief: 计算文本在允许的条件下的事迹尺寸
 *  @param: maxSzie 是允许的最大尺寸
 *  @param: fontSize 是字体的大小
 *  @return: 返回值是文本在限制条件下的实际尺寸
 */
- (CGSize) sizeWithMaxSize: (CGSize)maxSize andWithFontSize: (CGFloat) fontSize;

#pragma mark---判断
/**
 *  @brief: 判断是否为合法字符串
 *  @param: 无
 *  @return:Bool 值
 */
- (BOOL) isIllegal;


@end
