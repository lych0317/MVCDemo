//
//  model.m
//  MVCDemo
//
//  Created by yuanchao Li on 2017/4/27.
//  Copyright © 2017年 yuanchao Li. All rights reserved.
//

#import "Model.h"

@implementation Model

+ (instancetype)personWithName:(NSString *)name age:(NSInteger)age {
    Model *person = [[Model alloc] init];
    person.name = name;
    person.age = age;
    return person;
}

@end
