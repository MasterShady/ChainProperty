//
//  PropertyConfigure.h
//  AnimationWindow
//
//  Created by 刘思源 on 16/11/8.
//  Copyright © 2016年 刘思源. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PropertyConfigure : NSObject

/** UIView */
@property (nonatomic, weak) UIView *view;


- (PropertyConfigure *(^)(BOOL ))hidden;
- (PropertyConfigure *(^)(UIColor *))backgroundColor;
- (PropertyConfigure *(^)(UIColor *))borderColor;
- (PropertyConfigure *(^)(CGFloat))borderWidth;
- (PropertyConfigure *(^)(CGFloat))cornerRadius;
- (PropertyConfigure *(^)(CGFloat))left;
- (PropertyConfigure *(^)(CGFloat))right;
- (PropertyConfigure *(^)(CGFloat))top;
- (PropertyConfigure *(^)(CGFloat))bottom;
- (PropertyConfigure *(^)(CGRect))frame;
- (PropertyConfigure *(^)(BOOL))userInteractionEnabled;
- (PropertyConfigure *(^)(NSInteger ))tag;
- (PropertyConfigure *(^)(CGFloat))width;
- (PropertyConfigure *(^)(CGFloat))height;
- (PropertyConfigure *(^)(CGSize ))size;
- (PropertyConfigure *(^)(CGFloat ))alpha;
- (PropertyConfigure *(^)(BOOL))maskToBounds;

/** 子类的一些属性 */
/** 子类的一些属性 */
- (PropertyConfigure *(^)(NSString *))text;
- (PropertyConfigure *(^)(NSInteger ))fontSize;
- (PropertyConfigure *(^)(UIFont * ))font;
- (PropertyConfigure *(^)(UIColor *))textColor;
- (PropertyConfigure *(^)(NSAttributedString *))attributedText;
- (PropertyConfigure *(^)(NSTextAlignment ))textAlignment;
- (PropertyConfigure *(^)(NSString * ))normalTitle;
- (PropertyConfigure *(^)(NSString * ))selectedTitle;
- (PropertyConfigure *(^)(id))normalImg;
- (PropertyConfigure *(^)(id))selectedImg;
- (PropertyConfigure *(^)(UIColor * ))normalTitleColor;
- (PropertyConfigure *(^)(UIColor * ))selectedTitleColor;
- (PropertyConfigure *(^)(BOOL ))enable;
- (PropertyConfigure *(^)(id))image;

@end
