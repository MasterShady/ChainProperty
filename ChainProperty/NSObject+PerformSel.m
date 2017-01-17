//
//  NSObject+PerformSel.m
//  
//
//  Created by 刘思源 on 16/11/9.
//
//

#import "NSObject+PerformSel.h"

@implementation NSObject (PerformSel)

- (id)performSelector:(SEL)aSelector withParameters:(void *)firstParameter, ... {
    NSMethodSignature *signature = [self methodSignatureForSelector:aSelector];
    NSUInteger length = [signature numberOfArguments];
    NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:signature];
    [invocation setTarget:self];
    [invocation setSelector:aSelector];
    
    [invocation setArgument:&firstParameter atIndex:2];
    va_list arg_ptr;
    va_start(arg_ptr, firstParameter);
    for (NSUInteger i = 3; i < length; ++i) {
        void *parameter = va_arg(arg_ptr, void *);
        [invocation setArgument:&parameter atIndex:i];
    }
    va_end(arg_ptr);
    
    [invocation invoke];
    
    if ([signature methodReturnLength]) {
        id data;
        [invocation getReturnValue:&data];
        return data;
    }
    return nil;
}



@end
