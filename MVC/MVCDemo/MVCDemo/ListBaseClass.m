//
//  ListBaseClass.m
//  MVCDemo
//
//  Created by 1 on 15/10/10.
//  Copyright (c) 2015年 Lee. All rights reserved.
//

#import "ListBaseClass.h"
@implementation ListModel
+ (ListModel *)baseClassModel:(NSArray *)array
{
    return [[ListModel alloc] initWithModel:array];

}
- (id)initWithModel:(NSArray *)array{
    self = [super init];
    if (self) {
        
        NSMutableArray *mutableArr = [NSMutableArray array];
        
        for (NSDictionary *dict in array) {
            
            if ([dict[@"is_title"] isEqualToString:@"true"]) {
                self.title = dict[@"name"];
            }else{
                [mutableArr addObject:dict[@"name"]];
                NSLog(@"%@",dict[@"name"]);
            }
        }
        self.modelList = mutableArr;
        
        
    }
    return self;
}

@end


@implementation ListBaseClass
+ (ListBaseClass *)baseClassModel:(NSDictionary *)dict
{
    ListBaseClass *baseClass = [[ListBaseClass alloc] initWithModel:dict];
    return baseClass;

}

- (id)initWithModel:(NSDictionary *)dict
{
    self = [super init];
    if (self) {
        //在这边解析
        NSMutableArray *mutableArr = [NSMutableArray array];
        for (NSArray *arr in dict[@"list"])
        {
            ListModel *model = [ListModel baseClassModel:arr];
            
            [mutableArr addObject:model];
        }
        self.listArr = mutableArr ;
    }
    return self;
}

@end
