//
//  JHMacroDefinition.h
//  Project
//
//  Created by lijinhai on 2/2/15.
//  Copyright (c) 2015 gaussli. All rights reserved.
//

#ifndef Project_MacroDefinition_h
#define Project_MacroDefinition_h

// 设备信息
// 屏幕宽度（CGFloat）
#define JH_SCREEN_WIDTH [[UIScreen mainScreen] bounds].size.width
// 屏幕高度（CGFloat）
#define JH_SCREEN_HEIGHT [[UIScreen mainScreen] bounds].size.height
// 状态栏高度（CGFloat）
#define JH_STATUSBAR_HEIGHT [[UIApplication sharedApplication] statusBarFrame].size.height
// 设备名称（NSString）
#define JH_DEVICE_NAME [UIDevice currentDevice].name
// 设备模型（NSString）
#define JH_DEVICE_MODEL [UIDevice currentDevice].model
// 设备LocalizedModel（NSString）
#define JH_DEVICE_LOCALLIZED_MODEL [UIDevice currentDevice].localizedModel
// 设备系统名称（NSString）
#define JH_DEVICE_SYSTEM_NAME [UIDevice currentDevice].systemName
// 设备系统版本（NSString）
#define JH_DEVICE_SYSTEM_VERSION [UIDevice currentDevice].systemVersion
// 设备UUID（NSString）
#define JH_DEVICE_UUID [[UIDevice currentDevice].identifierForVendor UUIDString]
// bundle ID（NSString）
#define JH_BUNDLE_IDENTIFIER [NSBundle mainBundle].bundleIdentifier;

// 常用变量或函数
// NSUserDefaults对象
#define JH_USERDEFAULTS [NSUserDefaults standardUserDefaults]
// 设置字体
#define JH_FONT(fontName, fontSize) [UIFont fontWithName:fontName size:fontSize]
// 颜色设置
#define JH_RGBA(r,g,b,a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a/255.0]

// 关于文件管理的常量
// 文件管理者
#define JH_FILE_MANAGER [NSFileManager defaultManager]
// sandbox中documents文件夹路径
#define JH_SANDBOX_DOCUMENTS_PATH [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0]
// sandbox中library文件夹路径
#define JH_SANDBOX_LIBRARY_PATH [NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES) objectAtIndex:0]
// sandbox中caches文件夹路径
#define JH_SANDBOX_CACHES_PATH [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) objectAtIndex:0]
// sandbox中tmp文件夹路径
#define JH_SANDBOX_TMP_PATH NSTemporaryDirectory()

#endif
