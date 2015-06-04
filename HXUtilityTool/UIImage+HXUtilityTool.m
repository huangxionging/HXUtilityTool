//
//  UIImage+HXUtilityTool.m
//  HXUtilityTool
//
//  Created by huangxiong on 15/5/27.
//  Copyright (c) 2015年 New_Life. All rights reserved.
//

#import "UIImage+HXUtilityTool.h"

@implementation UIImage (HXUtilityTool)

#pragma mark---裁剪成矩形图片
- (UIImage *)clipWithRect:(CGRect)rect andBitPerComponent: (size_t) bitsPerComponent {
    
    // 颜色空间
    CGColorSpaceRef colorSpaceRef = CGColorSpaceCreateDeviceRGB();
    
    // 获取绘图环境
    CGContextRef ctx = CGBitmapContextCreate(nil, self.size.width, self.size.height, bitsPerComponent,  self.size.width * 4, colorSpaceRef, (CGBitmapInfo) kCGImageAlphaPremultipliedFirst);
    
    // 图像
    CGImageRef imageRef = self.CGImage;
    
    // 需要裁剪的矩形
    CGContextClipToRect(ctx, rect);
    
    // 将图像写入矩形
    CGContextDrawImage(ctx, rect, imageRef);
    
    // 生成裁剪后的图形
    CGImageRef imageDestination = CGBitmapContextCreateImage(ctx);
    
    CGColorSpaceRelease(colorSpaceRef);
    
    // 返回 UIImage 类型图片
    return [UIImage imageWithCGImage:imageDestination scale: [UIScreen mainScreen].scale orientation:UIImageOrientationUp];
}

- (UIImage *)clipImageWithPoints:(NSArray *)pointArray andBitPerComponent: (size_t) bitsPerComponent {
    
    // 颜色空间
    CGColorSpaceRef colorRef = CGColorSpaceCreateDeviceRGB();
    
    // 绘图环境
    CGContextRef ctx =  CGBitmapContextCreate(nil, self.size.width, self.size.height, bitsPerComponent, self.size.width * 4, colorRef, (CGBitmapInfo)kCGImageAlphaPremultipliedFirst);
    
    // 路径
    CGMutablePathRef path = CGPathCreateMutable();
    
    // 起始点
    CGPoint start = CGPointZero;

    // 绘制路径
    for (NSInteger index = 0; index < pointArray.count; ++index) {
        NSAssert([pointArray[index] respondsToSelector: @selector(CGPointValue)], @"不能获得点");
        
        CGPoint point = [pointArray[index] CGPointValue];
        
        if (index == 0) {
            CGPathMoveToPoint(path, NULL, point.x, point.y);
            start = point;
        }
        else {
            CGPathAddLineToPoint(path, NULL, point.x, point.y);
        }
    }
    
    // 绘制最后一条线
    CGPathAddLineToPoint(path, NULL, start.x, start.y);
    // 关闭路径
    CGPathCloseSubpath(path);
    // 将路径添加至设备环境
    CGContextAddPath(ctx, path);
    // 裁剪设备环境
    CGContextClip(ctx);
    // 释放路径
    CGPathRelease(path);
    // 将图像写入设备环境
    CGContextDrawImage(ctx, CGRectMake(0, 0, self.size.width, self.size.height), self.CGImage);
    // 获取裁剪后的图像
    CGImageRef imageRef = CGBitmapContextCreateImage(ctx);
    // 释放颜色空间
    CGColorSpaceRelease(colorRef);
    // 获取 UIImage 类型图像
    UIImage *imageDst = [UIImage imageWithCGImage: imageRef scale: [UIScreen mainScreen].scale orientation: UIImageOrientationUp];
    
    return imageDst;

}

+ (instancetype) imageWithFillColor: (UIColor *) color  andWithSize: (CGSize) size{
    
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    
    // 设备环境
    CGContextRef ctx = CGBitmapContextCreate(nil, size.width, size.height, 8, size.width * 4, colorSpace, (CGBitmapInfo) kCGImageAlphaPremultipliedFirst);
    
    // 填充颜色
    CGContextSetFillColorWithColor(ctx, color.CGColor);
    
    // 添加矩形
    CGContextAddRect(ctx, CGRectMake(0, 0, size.width, size.height));
    
    CGContextFillPath(ctx);
    
    // 获取图像
    CGImageRef imageRef = CGBitmapContextCreateImage(ctx);
    
    return [UIImage imageWithCGImage: imageRef];
}

@end
