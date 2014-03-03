//
//  SYBListViewController.h
//  WClient
//
//  Created by Song Xiaoming on 13-10-27.
//  Copyright (c) 2013年 Song Xiaoming. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EGORefreshTableHeaderView.h"


@interface SYBListViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, UIGestureRecognizerDelegate, EGORefreshTableHeaderDelegate>

@property (nonatomic, weak) IBOutlet UITableView *listTableView;

@property (nonatomic,weak) IBOutlet UINavigationBar *navigationTitle;
@property (nonatomic, weak) IBOutlet UIBarButtonItem *leftItem;
@property (nonatomic, weak) IBOutlet UIBarButtonItem *rightItem;

@property (nonatomic, strong) EGORefreshTableHeaderView *headerView;

- (void)reloadTableViewDataSource;
- (void)doneLoadingTableViewData;


@end
