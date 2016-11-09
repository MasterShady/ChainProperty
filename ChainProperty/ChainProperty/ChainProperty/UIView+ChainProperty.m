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





//static void swizzInstance(Class class, SEL originalSelector, SEL swizzledSelector)
//{
//    Method originalMethod = class_getInstanceMethod(class, originalSelector);
//    Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
//    
//    BOOL didAddMethod =
//    class_addMethod(class, originalSelector, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod));
//    
//    if (didAddMethod)
//    {
//        class_replaceMethod(class, swizzledSelector, method_getImplementation(originalMethod),method_getTypeEncoding(originalMethod));
//    }
//    else
//    {
//        method_exchangeImplementations(originalMethod, swizzledMethod);
//    }
//}


//+(void)load{
//    swizzInstance(self, @selector(init), @selector(cp_init));
//}

void * configureKey;

//- (instancetype)cp_init{
//    
//    if (self == [self cp_init]) {
//        PropertyConfigure *propertyConfigure = [PropertyConfigure new];
//        propertyConfigure.view = self;
//        objc_setAssociatedObject(self, &configureKey,
//                                 propertyConfigure,
//                                 OBJC_ASSOCIATION_RETAIN_NONATOMIC);
//    }
//    return self;
//}



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



