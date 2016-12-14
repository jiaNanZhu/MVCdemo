//
//  ListCell.h
//  MVCDemo
//
//  Created by 1 on 15/10/10.
//  Copyright (c) 2015年 Lee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListBaseClass.h"
@interface ListCell : UITableViewCell
{

    UILabel *_listTitleLabel;

}

@property (nonatomic,strong) ListModel *model;
@end
