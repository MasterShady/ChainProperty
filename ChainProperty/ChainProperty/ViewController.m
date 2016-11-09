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
    /*
     tf.frame = CGRectMake(0, 100, 300, 50);
     tf.backgroundColor = [UIColor redColor];
     tf.text = @"what a nice day";
     tf.textColor = [UIColor blackColor];
     tf.layer.borderColor = [UIColor yellowColor].CGColor;
     tf.layer.borderWidth = 0.5;
     tf.textAlignment = NSTextAlignmentCenter;
     */
    
    //必须以propertyConfigure开头
    tf.propertyConfigure.frame(CGRectMake(0, 100, 300, 50)).backgroundColor([UIColor redColor]).text(@"whata nice day")
    .textColor([UIColor blackColor]).borderColor([UIColor yellowColor]).borderWidth(0.5).textAlignment(NSTextAlignmentCenter);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
