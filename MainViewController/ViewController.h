//
//  ViewController.h
//  JHDeviceInfoDemo
//
//  Created by lijinhai on 1/22/15.
//  Copyright (c) 2015 gaussli. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) UITableView *tableView;                   // 页面TableView
@property (nonatomic, strong) NSMutableArray *tableViewDatasource;      // 页面TableView数据源
@end

