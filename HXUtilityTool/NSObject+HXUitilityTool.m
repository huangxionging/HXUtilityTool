//
//  NSObject+HXUitilityTool.m
//  UitilityTool
//
//  Created by huangxiong on 15/4/17.
//  Copyright (c) 2015年 New_Life. All rights reserved.
//

#import "NSObject+HXUitilityTool.h"
#import <sys/sysctl.h>

@implementation NSObject (HXUitilityTool)

#pragma mark---返回字符串对象
- (NSString *) toString {
    // 返回 NSString 对象
    return [NSString stringWithFormat: @"%@", self];
}

#pragma mark---获取系统版本
- (CGFloat) getDeviceSystemVersion {
    return [[UIDevice currentDevice] systemVersion].floatValue;
}

#pragma mark---获取手机名称
- (NSString *) getDeviceName {
    return [[UIDevice currentDevice] name];
}

#pragma mark--- 获取设备模型
- (NSString *) getDeviceModel {
    return [[UIDevice currentDevice] model];
}

#pragma mark---获取设备本地模型localizedModel
- (NSString *) getDeviceLocalizedModel {
    return [[UIDevice currentDevice] localizedModel];
}

#pragma mark---获取设备系统名称
- (NSString *) getDeviceSystemName {
    return [[UIDevice currentDevice] systemName];
}

#pragma mark---获取 UUID
- (NSUUID *) getDeviceUUID {
    return [[UIDevice currentDevice] identifierForVendor];
}

#pragma mark---获取 CFUUID string
- (NSString *)getDeviceCFUUIDString {
    CFUUIDRef  uuidObj = CFUUIDCreate(nil);//create a new UUID
    //get the string representation of the UUID
    NSString    *uuidString = (NSString*)CFBridgingRelease(CFUUIDCreateString(nil, uuidObj));
    CFRelease(uuidObj);
    
    return uuidString;
}

@end
