//
//  NSObject+PerformSel.h
//  
//
//  Created by 刘思源 on 16/11/9.
//
//

#import <Foundation/Foundation.h>

@interface NSObject (PerformSel)

- (id)performSelector:(SEL)aSelector withParameters:(void *)firstParameter, ... ;


@end
