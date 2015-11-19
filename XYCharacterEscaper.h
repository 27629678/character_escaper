//
//  XYCharacterEscaper.h
//  Demo
//
//  Created by hzyuxiaohua on 15/11/17.
//  Copyright © 2015年 X Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@class XYCharacterEscaper;

typedef XYCharacterEscaper* (^XYEscaperHandler)();

@interface XYCharacterEscaper : NSObject

- (NSString *)value;

+ (instancetype)escaperWithSource:(NSString *)source;

- (XYEscaperHandler)escapeSemicolon;

- (XYEscaperHandler)unescapeSemicolon;

- (XYEscaperHandler)escapeComma;

- (XYEscaperHandler)unescapeComma;

- (XYEscaperHandler)escapeColon;

- (XYEscaperHandler)unescapeColon;

- (XYEscaperHandler)escapeCTLF;

- (XYEscaperHandler)unescapeCTLF;

@end
