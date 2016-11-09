//
//  ViewController.m
//  ChainProperty
//
//  Created by 刘思源 on 16/11/9.
//  Copyright © 2016年 刘思源. All rights reserved.
//

#import "ViewController.h"
#import "UIView+ChainProperty.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITextField *tf = [UITextField new];
    [self.view addSubview:tf];
    tf.frame = CGRectMake(0, 100, 300, 50);
    tf.backgroundColor = [UIColor redColor];
    tf.text = @"what a nice day";
    tf.textColor = [UIColor blackColor];
    tf.layer.borderColor = [UIColor yellowColor].CGColor;
    tf.layer.borderWidth = 0.5;
    tf.textAlignment = NSTextAlignmentCenter;
    
    
    UITextField *tf1 = [UITextField new];
    [self.view addSubview:tf1];
    //必须以propertyConfigure开头
    tf1.propertyConfigure.frame(CGRectMake(0, 200, 300, 50)).backgroundColor([UIColor redColor]).text(@"whata nice day")
    .textColor([UIColor blackColor]).borderColor([UIColor yellowColor]).borderWidth(0.5).textAlignment(NSTextAlignmentCenter);
    
    UIButton *btn = [UIButton new];
    btn.propertyConfigure.normalTitle(@"normalTitle").selectedTitle(@"selectedTitle").normalTitleColor([UIColor blackColor]).selectedTitleColor([UIColor yellowColor]).frame(CGRectMake(0, 300, 100, 50)).backgroundColor([UIColor greenColor]).fontSize(15);
    [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
}


- (void)click:(UIButton *)sender{
    sender.selected = !sender.selected;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
