//
//  XYCharacterEscaper.m
//  Demo
//
//  Created by hzyuxiaohua on 15/11/17.
//  Copyright © 2015年 X Co., Ltd. All rights reserved.
//

#import "XYCharacterEscaper.h"

@interface XYCharacterEscaper ()

@property (nonatomic, copy) NSString* source;

@end

@implementation XYCharacterEscaper

- (NSString *)value
{
    return _source;
}

+ (instancetype)escaperWithSource:(NSString *)source
{
    if (!source) {
        return nil;
    }
    
    XYCharacterEscaper* escaper = [XYCharacterEscaper new];
    [escaper setSource:source];
    
    return escaper;
}

- (XYEscaperHandler)escapeSemicolon
{
    return ^() {
        [self escape:@";" into:@"\\;"];
        
        return self;
    };
}

- (XYEscaperHandler)unescapeSemicolon
{
    return ^ () {
        [self unescape:@"\\;" into:@";"];
        
        return self;
    };
}

- (XYEscaperHandler)escapeColon
{
    return ^ () {
        [self escape:@":" into:@"\\:"];
        
        return self;
    };
}

- (XYEscaperHandler)unescapeColon
{
    return ^ () {
        [self unescape:@"\\:" into:@":"];
        
        return self;
    };
}

- (XYEscaperHandler)escapeComma
{
    return ^ () {
        [self escape:@"," into:@"\\,"];
        
        return self;
    };
}

- (XYEscaperHandler)unescapeComma
{
    return ^ () {
        [self unescape:@"\\," into:@","];
        
        return self;
    };
}

- (XYEscaperHandler)escapeCTLF
{
    return ^ () {
        [self escape:@"\n" into:@"\\n"];
        [self escape:@"\r" into:@"\\r"];
        
        return self;
    };
}

- (XYEscaperHandler)unescapeCTLF
{
    return ^ () {
        [self unescape:@"\\n" into:@"\n"];
        [self unescape:@"\\r" into:@"\r"];
        
        return self;
    };
}

- (void)escape:(NSString *)character into:(NSString *)escaped_character
{
    _source = [_source stringByReplacingOccurrencesOfString:escaped_character withString:character];
    _source = [_source stringByReplacingOccurrencesOfString:character withString:escaped_character];
}

- (void)unescape:(NSString *)escaped_character into:(NSString *)character
{
    _source = [_source stringByReplacingOccurrencesOfString:escaped_character withString:character];
}

@end
