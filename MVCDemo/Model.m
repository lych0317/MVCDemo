//
//  Model.m
//  MVCDemo
//
//  Created by yuanchao Li on 2017/4/27.
//  Copyright © 2017年 yuanchao Li. All rights reserved.
//

#import "Model.h"
#import "Person.h"

@implementation Model

- (void)fetchPersonArray {
    // 请求网络
    // 或者
    // 访问数据库

    Person *person1 = [Person personWithName:@"aaaaa" age:1];
    Person *person2 = [Person personWithName:@"bbbbb" age:2];
    Person *person3 = [Person personWithName:@"ccccc" age:3];
    Person *person4 = [Person personWithName:@"ddddd" age:4];

    self.personArray = @[person1, person2, person3, person4];
}

@end
