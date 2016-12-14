//
//  ViewController.h
//  MVCDemo
//
//  Created by 1 on 15/10/10.
//  Copyright (c) 2015年 Lee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListBaseClass.h"
#import "ListCell.h"
@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong) ListBaseClass *baseClass;
@end
