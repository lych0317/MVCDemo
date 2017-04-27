//
//  ViewController.m
//  MVCDemo
//
//  Created by yuanchao Li on 2017/4/27.
//  Copyright © 2017年 yuanchao Li. All rights reserved.
//

#import "ViewController.h"
#import "Model.h"
#import "View.h"

@interface ViewController ()

@property (nonatomic, strong) NSArray *personArray;
@property (nonatomic, strong) View *customView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.customView = [[View alloc] init];
    self.customView.frame = self.view.bounds;
    [self.view addSubview:self.customView];

    __weak ViewController *weakSelf = self;
    [self fetchPersonArray:^{
        [weakSelf updateUI];
    }];
}

- (void)fetchPersonArray:(void (^)(void))completion {
    Model *person1 = [Model personWithName:@"aaaaa" age:1];
    Model *person2 = [Model personWithName:@"bbbbb" age:2];
    Model *person3 = [Model personWithName:@"ccccc" age:3];
    Model *person4 = [Model personWithName:@"ddddd" age:4];

    self.personArray = @[person1, person2, person3, person4];

    if (completion) {
        completion();
    }
}

- (void)updateUI {
    self.customView.personName1.text = [self.personArray[0] name];
    self.customView.personName2.text = [self.personArray[1] name];
    self.customView.personName3.text = [self.personArray[2] name];
    self.customView.personName4.text = [self.personArray[3] name];
}

@end
