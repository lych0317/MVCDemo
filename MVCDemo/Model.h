//
//  Model.h
//  MVCDemo
//
//  Created by yuanchao Li on 2017/4/27.
//  Copyright © 2017年 yuanchao Li. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Model : NSObject

@property (nonatomic, strong) NSArray *personArray;

- (void)fetchPersonArray;

@end
