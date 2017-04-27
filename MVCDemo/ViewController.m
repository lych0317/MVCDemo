//
//  ViewController.m
//  MVCDemo
//
//  Created by yuanchao Li on 2017/4/27.
//  Copyright © 2017年 yuanchao Li. All rights reserved.
//

#import "ViewController.h"
#import "Model.h"
#import "Person.h"
#import "View.h"

@interface ViewController ()

@property (nonatomic, strong) Model *model;
@property (nonatomic, strong) View *customView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.model = [[Model alloc] init];
    [self.model addObserver:self forKeyPath:@"personArray" options:NSKeyValueObservingOptionNew context:nil];

    self.customView = [[View alloc] init];
    self.customView.frame = self.view.bounds;
    [self.view addSubview:self.customView];

    [self.model fetchPersonArray];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    if ([keyPath isEqualToString:@"personArray"]) {
        [self updateUI];
    }
}

- (void)updateUI {
    self.customView.personName1.text = [self.model.personArray[0] name];
    self.customView.personName2.text = [self.model.personArray[1] name];
    self.customView.personName3.text = [self.model.personArray[2] name];
    self.customView.personName4.text = [self.model.personArray[3] name];
}

@end
