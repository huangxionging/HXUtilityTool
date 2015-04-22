//
//  NSDate+HXUtilityTool.h
//  HXUtilityTool
//
//  Created by huangxiong on 15/4/22.
//  Copyright (c) 2015年 New_Life. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (HXUtilityTool)

/**
 *  @brief: 计算离现在日期相隔多少天的日期
 *  @param: numberDay 是整数表示与当前日期的间隔, 负数往前数, 正数往后数
 *  @return: 对应的日期
 */
- (NSDate *) dateWithNumberDay: (NSInteger) numberDay;

@end
