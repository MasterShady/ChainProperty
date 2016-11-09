//
//  UIView+ChainProperty.m
//  
//
//  Created by 刘思源 on 16/11/8.
//
//

#import "UIView+ChainProperty.h"
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <objc/runtime.h>




@implementation UIView (ChainProperty)

void * configureKey;

- (PropertyConfigure *)propertyConfigure{
    PropertyConfigure *p = objc_getAssociatedObject(self, &configureKey);
    if (!p) {
        p = [PropertyConfigure new];
        p.view = self;
        objc_setAssociatedObject(self, &configureKey,
                                 p,
                                 OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return p;
}

@end



