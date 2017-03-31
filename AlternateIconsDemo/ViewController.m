//
//  ViewController.m
//  AlternateIconsDemo
//
//  Created by Jason on 2017/3/31.
//  Copyright © 2017年 Jason. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self performSelector:@selector(changeIconAction) withObject:nil afterDelay:2];
    
}
- (void)changeIconAction{
    if ([UIApplication sharedApplication].supportsAlternateIcons) {
        NSLog(@"你可以更换icon");
    }else{
        NSLog(@"非常抱歉，你不能更换icon");
        return;
    }
    NSString * iconImageName = @"blackIcon2";
//    if ([UIApplication sharedApplication].alternateIconName != nil) {
//        [[UIApplication sharedApplication] setAlternateIconName:iconImageName completionHandler:^(NSError * _Nullable error) {
//            NSLog(@"出现了错误");
//        }];
        //        NSLog(@"the alternate icon's name is %@")
        
//    }else{
//        NSLog(@"走进了第二条 ");
        [[UIApplication sharedApplication] setAlternateIconName:iconImageName completionHandler:^(NSError * _Nullable error) {
            NSLog(@"成功");
        }];
//    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
