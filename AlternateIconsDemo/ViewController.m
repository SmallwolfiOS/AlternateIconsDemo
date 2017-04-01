//
//  ViewController.m
//  AlternateIconsDemo
//
//  Created by Jason on 2017/3/31.
//  Copyright © 2017年 Jason. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong) NSArray * iconsArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _iconsArray = @[@"redIcon",@"blackIcon",@"blueIcon"];
    
}
- (IBAction)changeIconButtonClick:(UIButton *)sender {
    if ([UIApplication sharedApplication].supportsAlternateIcons) {
        NSLog(@"你可以更换icon");
        [[UIApplication sharedApplication] setAlternateIconName:_iconsArray[sender.tag] completionHandler:^(NSError * _Nullable error) {
            if (!error) {
                NSLog(@"成功更换为%@",_iconsArray[sender.tag]);
            }else{
                NSLog(@"error:%@",error);
            }
        }];
    }else{
        NSLog(@"非常抱歉，你不能更换icon");
        return;
    }
    
}

- (IBAction)backToPrimaryIconAction:(UIButton *)sender {
    [[UIApplication sharedApplication] setAlternateIconName:nil completionHandler:^(NSError * _Nullable error) {
        if (!error) {
            NSLog(@"成功还原图标");
        }else{
            NSLog(@"error:%@",error);
        }
    }];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
