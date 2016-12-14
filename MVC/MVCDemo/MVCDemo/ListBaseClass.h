//
//  ListBaseClass.h
//  MVCDemo
//
//  Created by 1 on 15/10/10.
//  Copyright (c) 2015年 Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

// 代表一个单元格上的model
@interface ListModel : NSObject
@property (nonatomic,copy) NSArray *modelList;
@property (nonatomic,strong) NSString *title;
+ (ListModel *)baseClassModel:(NSArray *)array;
- (id)initWithModel:(NSArray *)array;

@end


@interface ListBaseClass : NSObject

@property (nonatomic,copy) NSArray *listArr;


+ (ListBaseClass *)baseClassModel:(NSDictionary *)dict;
- (id)initWithModel:(NSDictionary *)dict;
@end
