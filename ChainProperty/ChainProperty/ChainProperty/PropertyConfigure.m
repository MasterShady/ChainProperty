//
//  PropertyConfigure.m
//  AnimationWindow
//
//  Created by 刘思源 on 16/11/8.
//  Copyright © 2016年 刘思源. All rights reserved.
//

#import "PropertyConfigure.h"
#import "NSObject+PerformSel.h"
#import "UIView+Extension.h"

@implementation PropertyConfigure

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"

- (PropertyConfigure *(^)(BOOL ))hidden{
    return ^(BOOL hidden){
        self.view.hidden = hidden;
        return self;
    };
}

- (PropertyConfigure *(^)(UIColor *))backgroundColor{
    return ^(UIColor *backgroundColor){
        self.view.backgroundColor = backgroundColor;
        return self;
    };
}

- (PropertyConfigure *(^)(UIColor *))borderColor{
    return ^(UIColor *borderColor){
        self.view.layer.borderColor = borderColor.CGColor;
        return self;
    };
}

- (PropertyConfigure *(^)(CGFloat))borderWidth{
    return ^(CGFloat borderWidth){
        self.view.layer.borderWidth = borderWidth;
        return self;
    };
}

- (PropertyConfigure *(^)(CGFloat))cornerRadius{
    return ^(CGFloat cornerRadius){
        self.view.layer.cornerRadius = cornerRadius;
        return self;
    };
}

- (PropertyConfigure *(^)(CGFloat))left{
    return ^(CGFloat left){
        self.view.left = left;
        return self;
    };
}

- (PropertyConfigure *(^)(CGFloat))right{
    return ^(CGFloat right){
        self.view.right = right;
        return self;
    };
}

- (PropertyConfigure *(^)(CGFloat))top{
    return ^(CGFloat top){
        self.view.top = top;
        return self;
    };
}

- (PropertyConfigure *(^)(CGFloat))bottom{
    return ^(CGFloat bottom){
        self.view.bottom = bottom;
        return self;
    };
}

- (PropertyConfigure *(^)(CGRect))frame{
    return ^(CGRect frame){
        self.view.frame = frame;
        return self;
    };
}


- (PropertyConfigure *(^)(BOOL))userInteractionEnabled{
    return ^(BOOL userInteractionEnabled){
        self.view.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}

- (PropertyConfigure *(^)(NSInteger ))tag{
    return ^(NSInteger tag){
        self.view.tag = tag;
        return self;
    };
}


- (PropertyConfigure *(^)(CGFloat))width{
    return ^(CGFloat width){
        self.view.width = width;
        return self;
    };
}

- (PropertyConfigure *(^)(CGFloat))height{
    return ^(CGFloat height){
        self.view.height = height;
        return self;
    };
}

- (PropertyConfigure *(^)(CGSize ))size{
    return ^(CGSize size){
        self.view.size = size;
        return self;
    };
}

- (PropertyConfigure *(^)(CGFloat ))alpha{
    return ^(CGFloat alpha){
        self.view.alpha = alpha;
        return self;
    };
}



- (PropertyConfigure *(^)(NSString *))text{
    return ^(NSString *text){
        if ([self.view respondsToSelector:@selector(setText:)]) {
            [self.view performSelector:@selector(setText:) withObject:text];
        }
        return self;
    };
}

- (PropertyConfigure *(^)(NSInteger ))fontSize{
    return ^(NSInteger fontsize){
        if([self.view respondsToSelector:@selector(setFont:)]){
            [self.view performSelector:@selector(setFont:) withObject:[UIFont systemFontOfSize:fontsize]];
        }
        return self;
    };
}

- (PropertyConfigure *(^)(UIFont * ))font{
    return ^(UIFont *font){
        if([self.view respondsToSelector:@selector(setFont:)]){
            [self.view performSelector:@selector(setFont:) withObject:font];
        }
        return self;
    };
}

- (PropertyConfigure *(^)(UIColor *))textColor{
    return ^(UIColor *textColor){
        if([self.view respondsToSelector:@selector(setTextColor:)]){
            [self.view performSelector:@selector(setTextColor:) withObject:textColor];
        }
        return self;
    };
}

- (PropertyConfigure *(^)(NSAttributedString *))attributedText{
    return ^(NSAttributedString *attributedText){
        if([self.view respondsToSelector:@selector(setAttributedText:)]){
            [self.view performSelector:@selector(setAttributedText:) withObject:attributedText];
        }
        return self;
    };
}

- (PropertyConfigure *(^)(NSTextAlignment ))textAlignment{
    return ^(NSTextAlignment textAlignment){
        if([self.view respondsToSelector:@selector(setTextAlignment:)]){
            [self.view performSelector:@selector(setTextAlignment:) withParameters:textAlignment];
        }
        return self;
    };
}


- (PropertyConfigure *(^)(NSString * ))normalTitle{
    return ^(NSString * normalTitle){
        if([self.view respondsToSelector:@selector(setTitle:forState:)]){
            [self.view performSelector:@selector(setTitle:forState:) withParameters:(__bridge void *)(normalTitle),UIControlStateNormal];
        }
        return self;
    };
}


- (PropertyConfigure *(^)(UIColor * ))normalTitleColor{
    return ^(UIColor * normalTitleColor){
        if([self.view respondsToSelector:@selector(setTitleColor:forState:)]){
            [self.view performSelector:@selector(setTitleColor:forState:) withParameters:(__bridge void *)(normalTitleColor),UIControlStateNormal];
        }
        return self;
    };
}


- (PropertyConfigure *(^)(id))normalImg{
    return ^(id  normalImg){
        if([self.view respondsToSelector:@selector(setImage:forState:)]){
            UIImage *image;
            if ([normalImg isKindOfClass:[NSString class]]) {
                image = [UIImage imageNamed:normalImg];
            }else if ([normalImg isKindOfClass:[UIImage class]]){
                image = normalImg;
            }else{
                NSAssert(normalImg, @"normalImg must be a image or string");
            }
            [self.view performSelector:@selector(setImage:forState:) withParameters:(__bridge void *)(image),UIControlStateNormal];
        }
        return self;
    };
}


- (PropertyConfigure *(^)(NSString * ))selectedTitle{
    return ^(NSString * selectedTitle){
        if([self.view respondsToSelector:@selector(setTitle:forState:)]){
            [self.view performSelector:@selector(setTitle:forState:) withParameters:(__bridge void *)(selectedTitle),UIControlStateSelected];
        }
        return self;
    };
}

- (PropertyConfigure *(^)(UIColor * ))selectedTitleColor{
    return ^(UIColor * selectedTitleColor){
        if([self.view respondsToSelector:@selector(setTitleColor:forState:)]){
            [self.view performSelector:@selector(setTitleColor:forState:) withParameters:(__bridge void *)(selectedTitleColor),UIControlStateSelected];
        }
        return self;
    };
}

- (PropertyConfigure *(^)(id))selectedImg{
    return ^(id  selectedImg){
        if([self.view respondsToSelector:@selector(setImage:forState:)]){
            UIImage *image;
            if ([selectedImg isKindOfClass:[NSString class]]) {
                image = [UIImage imageNamed:selectedImg];
            }else if ([selectedImg isKindOfClass:[UIImage class]]){
                image = selectedImg;
            }else{
                NSAssert(selectedImg, @"selectedImg must be a image or string");
            }
            [self.view performSelector:@selector(setImage:forState:) withParameters:(__bridge void *)(image),UIControlStateSelected];
        }
        return self;
    };
}

- (PropertyConfigure *(^)(BOOL ))enable{
    return ^(BOOL enable){
        if([self.view respondsToSelector:@selector(setEnable:)]){
            [self.view performSelector:@selector(setEnable:) withParameters:enable];
        }
        return self;
    };
}



#pragma clang diagnostic pop


@end
