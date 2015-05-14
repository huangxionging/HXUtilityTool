//
//  NSObject+HXUitilityTool.h
//  UitilityTool
//
//  Created by huangxiong on 15/4/17.
//  Copyright (c) 2015年 New_Life. All rights reserved.
//
#import "HXExternalDependent.h"

@interface NSObject (HXUitilityTool)

/**
 *  @brief: 将对象转化成 NSString
 *  @param: 无
 *  @return:NSString 对象
 */
- (NSString *) toString;

/**
 *  @brief: 获取系统版本
 *  @param: 无
 *  @return: 系统版本号
 */
- (CGFloat) getDeviceSystemVersion;

/**
 *  @brief: 获取手机名称
 *  @param: 无
 *  @return: 取手机名称
 */
- (NSString *) getDeviceName;

/**
 *  @brief: 获取设备模型
 *  @param: 无
 *  @return: 设备模型
 */
- (NSString *) getDeviceModel;

/**
 *  @brief: 获取设备本地模型localizedModel
 *  @param: 无
 *  @return: localizedModel
 */
- (NSString *) getDeviceLocalizedModel;

/**
 *  @brief: 获取系统名称
 *  @param: 无
 *  @return: 系统名称
 */
- (NSString *) getDeviceSystemName;

/**
 *  @brief: 获取 UUID
 *  @param: 无
 *  @return: UUID
 */
- (NSUUID *) getDeviceUUID;

/**
 *  @brief: 获取 CFUUID string
 *  @param: 无
 *  @return: UUID string
 */
- (NSString *)getDeviceCFUUIDString;

@end
