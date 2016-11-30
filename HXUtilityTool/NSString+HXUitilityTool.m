//
//  NSString+HXUitilityTool.m
//  UitilityTool
//
//  Created by huangxiong on 15/4/17.
//  Copyright (c) 2015年 New_Life. All rights reserved.
//

#import "NSString+HXUitilityTool.h"
#import "NSObject+HXUitilityTool.h"
#pragma clang diagnostic ignored "-Wdeprecated"

@implementation NSString (HXUitilityTool)

#pragma mark---数值转换
+ (instancetype) stringWithUnInt: (unsigned int) value {
    return [NSString stringWithFormat: @"%u", value];
}

+ (instancetype) stringWithInt: (int) value {
    return [NSString stringWithFormat: @"%d", value];
}

+ (instancetype) stringWithLong: (long)value {
    return [NSString stringWithFormat: @"%ld", value];
}

+ (instancetype) stringWithFloat: (float)value {
    return [NSString stringWithFormat: @"%f", value];
}

+ (instancetype) stringWithDouble: (double)value {
    return [NSString stringWithFormat: @"%lf", value];
}

#pragma mark---计算文本尺寸
- (CGSize) sizeWithMaxSize: (CGSize)maxSize andWithFontSize: (CGFloat) fontSize {
    
    // 判断系统版本
    if ([[[UIDevice currentDevice] systemVersion] floatValue]>=7.0){
        // iOS 7.0 以上适用
        CGRect rect = [self boundingRectWithSize: maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName: [UIFont systemFontOfSize: fontSize]} context:nil];
        return rect.size;
    }
    else {
        // iOS 7.0 以下适用
        return  [self sizeWithFont:[UIFont systemFontOfSize: fontSize]constrainedToSize: maxSize];
    }
}

#pragma mark---判断是否为合法字符串
- (BOOL) isIllegal {
    
    // 首先转换成 NSString 对象
    NSString *string = [self toString];
    
    // 然后再判空
    return ([string isEqualToString: @"<null>"] || [string isEqualToString: @"(null)"] || [[string stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]] isEqualToString: @""]);
}

@end
