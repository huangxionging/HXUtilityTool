//
//  UIImage+HXUtilityTool.h
//  HXUtilityTool
//
//  Created by huangxiong on 15/5/27.
//  Copyright (c) 2015年 New_Life. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (HXUtilityTool)

/**
 *  @brief: 使用指定颜色填充图像
 *  @param: color 是 UIKit 中的颜色, size 是尺寸信息, 就是画布大小
 *  @retur: 返回值是填充后的图像
 */
+ (instancetype) imageWithFillColor: (UIColor *) color  andWithSize: (CGSize) size;

/**
 *  @brief: 裁剪矩形图片
 *  @param: rect 是矩形的尺寸信息, bitsPerComponent 是每个部分包含的尾数
 *  @retur: 裁剪之后的图片
 */
- (UIImage *)clipWithRect:(CGRect)rect andBitPerComponent: (size_t) bitsPerComponent;

/**
 *  @brief: 裁剪指定点数的图片
 *  @param: pointArray 是包含 NSValue 对象的数组, 实际上是 CGPoint 类型
 *  @retur: 裁剪之后的图片
 */
- (UIImage *) clipImageWithPoints: (NSArray *)pointArray;

@end
