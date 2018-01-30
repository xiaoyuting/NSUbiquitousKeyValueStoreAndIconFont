//
//  TBCityFontImageInfo.m
//  iCoupon
//
//  Created by John Wong on 10/12/14.
//  Copyright (c) 2014 Taodiandian. All rights reserved.
//

#import "GMIconInfo.h"

@implementation GMIconInfo

- (instancetype)initWithText:(NSString *)text size:(NSInteger)size color:(UIColor *)color {
    if (self = [super init]) {
        self.text = text;
        self.size = size;
        self.color = color;
        self.imageInsets = UIEdgeInsetsZero;
    }
    return self;
}

- (instancetype)initWithText:(NSString *)text size:(NSInteger)size color:(UIColor *)color inset:(UIEdgeInsets)inset {
    if (self = [super init]) {
        self.text = text;
        self.size = size;
        self.color = color;
        self.imageInsets = inset;
    }
    return self;
}

+ (instancetype)iconInfoWithText:(NSString *)text size:(NSInteger)size color:(UIColor *)color {
    return [[GMIconInfo alloc] initWithText:text size:size color:color];
}

+ (instancetype)iconInfoWithText:(NSString *)text size:(NSInteger)size color:(UIColor *)color inset:(UIEdgeInsets)inset {
    return [[GMIconInfo alloc] initWithText:text size:size color:color inset:inset];
}

@end
