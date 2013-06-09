//
//  NSString+NSHValidation.m
//  NSHelperDemo
//
//  Created by glebus on 09.06.13.
//  Copyright (c) 2013 glebus. All rights reserved.
//

#import "NSString+NSHValidation.h"

@implementation NSString (NSHValidation)

- (BOOL)isNotEmpty {
    BOOL isNotEmpty = NO;
    NSInteger lenght = [self length];
    if (lenght == 0) {
        return isNotEmpty;
    }
    
    NSCharacterSet *whitespaceCharacterSet = [NSCharacterSet whitespaceCharacterSet];
    NSInteger lenghtOfTrimedString = [[self stringByTrimmingCharactersInSet:whitespaceCharacterSet] length] ;
    isNotEmpty = lenghtOfTrimedString > 0;
    
    return isNotEmpty;
}

@end
