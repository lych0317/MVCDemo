//
//  View.m
//  MVCDemo
//
//  Created by yuanchao Li on 2017/4/27.
//  Copyright © 2017年 yuanchao Li. All rights reserved.
//

#import "View.h"

@implementation View

- (instancetype)init
{
    self = [super init];
    if (self) {
        _personName1 = ({
            UILabel *label = [[UILabel alloc] init];
            label.textColor = [UIColor redColor];
            label.frame = CGRectMake(50, 50, 100, 40);
            label;
        });
        [self addSubview:_personName1];
        _personName2 = ({
            UILabel *label = [[UILabel alloc] init];
            label.textColor = [UIColor redColor];
            label.frame = CGRectMake(50, 100, 100, 40);
            label;
        });
        [self addSubview:_personName2];
        _personName3 = ({
            UILabel *label = [[UILabel alloc] init];
            label.textColor = [UIColor redColor];
            label.frame = CGRectMake(50, 150, 100, 40);
            label;
        });
        [self addSubview:_personName3];
        _personName4 = ({
            UILabel *label = [[UILabel alloc] init];
            label.textColor = [UIColor redColor];
            label.frame = CGRectMake(50, 200, 100, 40);
            label;
        });
        [self addSubview:_personName4];
    }
    return self;
}

@end
