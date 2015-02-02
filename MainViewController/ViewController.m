//
//  ViewController.m
//  JHDeviceInfoDemo
//
//  Created by lijinhai on 1/22/15.
//  Copyright (c) 2015 gaussli. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initData];
    [self initWidget];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - 初始化
#pragma mark 初始化控件
- (void) initWidget {
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, [[UIApplication sharedApplication] statusBarFrame].size.height, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-[[UIApplication sharedApplication] statusBarFrame].size.height)];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    [self.view addSubview:_tableView];
}

#pragma mark 初始化数据
- (void) initData {
    // 屏幕宽度
    CGFloat screenWidth = [[UIScreen mainScreen] bounds].size.width;
    // 屏幕高度
    CGFloat screenHeight = [[UIScreen mainScreen] bounds].size.height;
    // 状态栏高度
    CGFloat statusbarHeight = [[UIApplication sharedApplication] statusBarFrame].size.height;
    // 设备名称
    NSString *deviceName = [UIDevice currentDevice].name;
    // 设备模型
    NSString *deviceModel = [UIDevice currentDevice].model;
    // 设备LocalizedModel
    NSString *deviceLocalizedModel = [UIDevice currentDevice].localizedModel;
    // 设备系统名称
    NSString *deviceSystemName = [UIDevice currentDevice].systemName;
    // 设备系统版本
    NSString *deviceSystemVersion = [UIDevice currentDevice].systemVersion;
    // 设备UUID
    NSString *deviceUUID = [[UIDevice currentDevice].identifierForVendor UUIDString];
    // bundle对象
    NSBundle *bundle = [NSBundle mainBundle];
    // bundle路径
    NSString *bundlePath = bundle.bundlePath;
    // resource路径
    NSString *resourcePath = bundle.resourcePath;
    // executable路径
    NSString *executablePath = bundle.executablePath;
    // privateFrame路径
    NSString *privateFrameworksPath = bundle.privateFrameworksPath;
    // sharedFrameworks路径
    NSString *sharedFrameworksPath = bundle.sharedFrameworksPath;
    // shareSupport路径
    NSString *sharedSupportPath = bundle.sharedSupportPath;
    // buildInPlugIns路径
    NSString *builtInPlugInsPath = bundle.builtInPlugInsPath;
    // appStoreReceiptURL
    NSString *appStoreReceiptURL = bundle.appStoreReceiptURL.relativePath;
    // bundleIdentifier
    NSString *bundleIdentifier = bundle.bundleIdentifier;
    // 包含bundle信息的Dictionary
    NSDictionary *bundleDic = bundle.infoDictionary;
    NSLog(@"%@", bundleDic);
    /*
     {
     CFBundleDevelopmentRegion = en;
     CFBundleExecutable = JHDeviceInfoDemo;
     CFBundleIdentifier = "org.gaussli.JHDeviceInfoDemo";
     CFBundleInfoDictionaryVersion = "6.0";
     CFBundleInfoPlistURL = "Info.plist -- file:///Users/lijinhai/Library/Developer/CoreSimulator/Devices/E0B41762-6350-49AE-BFB0-651A4B502E97/data/Containers/Bundle/Application/39808A60-1277-4DB4-AB6B-90E416C0A098/JHDeviceInfoDemo.app/";
     CFBundleName = JHDeviceInfoDemo;
     CFBundleNumericVersion = 16809984;
     CFBundlePackageType = APPL;
     CFBundleShortVersionString = "1.0";
     CFBundleSignature = "????";
     CFBundleSupportedPlatforms =     (
     iPhoneSimulator
     );
     CFBundleVersion = 1;
     DTPlatformName = iphonesimulator;
     DTSDKName = "iphonesimulator8.1";
     LSRequiresIPhoneOS = 1;
     UIDeviceFamily =     (
     1
     );
     UILaunchStoryboardName = LaunchScreen;
     UIMainStoryboardFile = Main;
     UIRequiredDeviceCapabilities =     (
     armv7
     );
     UISupportedInterfaceOrientations =     (
     UIInterfaceOrientationPortrait,
     UIInterfaceOrientationLandscapeLeft,
     UIInterfaceOrientationLandscapeRight
     );
     }
     */
    
    self.tableViewDatasource = [[NSMutableArray alloc] init];
    [self.tableViewDatasource addObject:[NSString stringWithFormat:@"屏幕宽度：%f", screenWidth]];
    [self.tableViewDatasource addObject:[NSString stringWithFormat:@"屏幕高度：%f", screenHeight]];
    [self.tableViewDatasource addObject:[NSString stringWithFormat:@"状态栏高度：%f", statusbarHeight]];
    [self.tableViewDatasource addObject:[NSString stringWithFormat:@"设备名称：%@", deviceName]];
    [self.tableViewDatasource addObject:[NSString stringWithFormat:@"设备模型：%@", deviceModel]];
    [self.tableViewDatasource addObject:[NSString stringWithFormat:@"设备地区性模型：%@", deviceLocalizedModel]];
    [self.tableViewDatasource addObject:[NSString stringWithFormat:@"设备系统名称：%@", deviceSystemName]];
    [self.tableViewDatasource addObject:[NSString stringWithFormat:@"设备系统版本：%@", deviceSystemVersion]];
    [self.tableViewDatasource addObject:[NSString stringWithFormat:@"设备UUID：%@", deviceUUID]];
    [self.tableViewDatasource addObject:[NSString stringWithFormat:@"bundlePath：%@", bundlePath]];
    [self.tableViewDatasource addObject:[NSString stringWithFormat:@"resourcePath：%@", resourcePath]];
    [self.tableViewDatasource addObject:[NSString stringWithFormat:@"executablePath：%@", executablePath]];
    [self.tableViewDatasource addObject:[NSString stringWithFormat:@"privateFrameworksPath：%@", privateFrameworksPath]];
    [self.tableViewDatasource addObject:[NSString stringWithFormat:@"sharedFrameworksPath：%@", sharedFrameworksPath]];
    [self.tableViewDatasource addObject:[NSString stringWithFormat:@"sharedSupportPath：%@", sharedSupportPath]];
    [self.tableViewDatasource addObject:[NSString stringWithFormat:@"builtInPlugInsPath：%@", builtInPlugInsPath]];
    [self.tableViewDatasource addObject:[NSString stringWithFormat:@"appStoreReceiptURL：%@", appStoreReceiptURL]];
    [self.tableViewDatasource addObject:[NSString stringWithFormat:@"bundleIdentifier：%@", bundleIdentifier]];
}

#pragma mark - TableView代理
// 每一行样式
- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"CellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.textLabel.text = [self.tableViewDatasource objectAtIndex:indexPath.row];
    cell.textLabel.numberOfLines = 0;
    return cell;
}

// TableView每一个section的行数
- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.tableViewDatasource count];
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"%@", [self.tableViewDatasource objectAtIndex:indexPath.row]);
}

@end
