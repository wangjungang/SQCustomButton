//
//  ViewController.m
//  SQCustomButton
//
//  Created by 王俊钢 on 2017/10/14.
//  Copyright © 2017年 wangjungang. All rights reserved.
//

#import "ViewController.h"
#import "SQCustomButton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    
    SQCustomButton *button1 = [[SQCustomButton alloc]initWithFrame:(CGRect){(CGRectGetWidth(self.view.frame)-100)/2,80,100,100}
                                                              type:SQCustomButtonTopImageType
                                                         imageSize:CGSizeMake(50, 50) midmargin:10];
    button1.isShowSelectBackgroudColor = YES;
    button1.imageView.image = [UIImage imageNamed:@"image"];
    button1.backgroundColor = [UIColor whiteColor];
    button1.titleLabel.text = @"朋友圈";
    [self.view addSubview:button1];
    
    [button1 touchAction:^(SQCustomButton * _Nonnull button) {
        NSLog(@"上图标，下文字");
    }];
    
    
    SQCustomButton *button2 = [[SQCustomButton alloc]initWithFrame:(CGRect){(CGRectGetWidth(self.view.frame)-100)/2,200,100,50}
                                                              type:SQCustomButtonLeftImageType
                                                         imageSize:CGSizeMake(30, 30) midmargin:10];
    button2.isShowSelectBackgroudColor = YES;
    button2.imageView.image = [UIImage imageNamed:@"image"];
    button2.backgroundColor = [UIColor whiteColor];
    button2.titleLabel.text = @"朋友圈";
    [self.view addSubview:button2];
    [button2 touchAction:^(SQCustomButton * _Nonnull button) {
        NSLog(@"左图标，右文字");
    }];
    
    
    SQCustomButton *button3 = [[SQCustomButton alloc]initWithFrame:(CGRect){(CGRectGetWidth(self.view.frame)-100)/2,270,100,50}
                                                              type:SQCustomButtonRightImageType
                                                         imageSize:CGSizeMake(30, 30) midmargin:10];
    button3.isShowSelectBackgroudColor = YES;
    button3.imageView.image = [UIImage imageNamed:@"image"];
    button3.backgroundColor = [UIColor whiteColor];
    button3.titleLabel.text = @"朋友圈";
    [self.view addSubview:button3];
    [button3 touchAction:^(SQCustomButton * _Nonnull button) {
        NSLog(@"右图标，左文字");
    }];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
