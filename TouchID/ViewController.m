//
//  ViewController.m
//  TouchID
//
//  Created by Imp on 17/1/14.
//  Copyright © 2017年 codoon. All rights reserved.
//

#import "ViewController.h"
#import <LocalAuthentication/LocalAuthentication.h>

@interface ViewController ()

@property (nonatomic, strong) LAContext *context;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _context = [[LAContext alloc] init];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)buttonAction:(id)sender {
    [_context evaluatePolicy:LAPolicyDeviceOwnerAuthentication localizedReason:@"开启touchID？" reply:^(BOOL success, NSError * _Nullable error) {
        if (success) {
            NSLog(@"success");
        }else{
            NSLog(@"%@",error);
        }
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
