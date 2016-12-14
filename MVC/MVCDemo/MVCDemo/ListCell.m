//
//  ListCell.m
//  MVCDemo
//
//  Created by 1 on 15/10/10.
//  Copyright (c) 2015年 Lee. All rights reserved.
//

#import "ListCell.h"

@implementation ListCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        // Initialization code
        // 代码初始化调用该方法
        _listTitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
        _listTitleLabel.textColor = [UIColor redColor];
        _listTitleLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:_listTitleLabel];
        
        for (int i = 0 ; i< 6;i++)
        {
            UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
            button.frame = CGRectMake(i%3*80, i/3*20.0f+44.0f, 80.0f, 40.0f);
            button.backgroundColor = [UIColor clearColor];
            [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            button.tag = 100+i;
//            [button setTitle:@"1223" forState:UIControlStateNormal];
            [self addSubview:button];
        }
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
    // xib初始化调用该方法
}

- (void)setModel:(ListModel *)model
{
    _model = model;
    
    _listTitleLabel.text = self.model.title;
    
    for (int i = 0; i< 6; i++)
    {
        UIButton *button = [self viewWithTag:100+i];
        if (i <self.model.modelList.count)
        {
            button.hidden = NO;
            NSString *name = self.model.modelList[i];
            [button setTitle:name forState:UIControlStateNormal];
        }
        else
        {
            button.hidden = YES;
        }
    }
}
@end
