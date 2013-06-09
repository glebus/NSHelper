//
//  NSString+NSHEquality.m
//  NSHelperDemo
//
//  Created by glebus on 09.06.13.
//  Copyright (c) 2013 glebus. All rights reserved.
//

#import "NSString+NSHEquality.h"

@implementation NSString (NSHEquality)

- (BOOL)isEqualToOneOfStrings:(NSArray *)strings {
    BOOL isEqualToOneOfStrings = [strings containsObject:self];
    return isEqualToOneOfStrings;
}

@end
