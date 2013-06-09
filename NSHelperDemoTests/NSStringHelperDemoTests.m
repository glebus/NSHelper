//
//  NSHelperDemoTests.m
//  NSHelperDemoTests
//
//  Created by glebus on 09.06.13.
//  Copyright (c) 2013 glebus. All rights reserved.
//

#import "NSStringHelperDemoTests.h"
#import "NSString+NSHHelper.h"

@implementation NSHelperDemoTests {
    
}

#pragma mark - Test life cycle

- (void)setUp {
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown {
    // Tear-down code here.
    
    [super tearDown];
}

#pragma mark - Validation

#pragma mark isNotEmpty

- (void)testNilString {
    NSString *testString = nil;
    
    BOOL isNotEmpty = [testString isNotEmpty];
    STAssertFalse(isNotEmpty, @"isNotEmpty method for nil string must return NO");
}

- (void)testEmptyString {
    NSString *testString = @"";
    
    BOOL isNotEmpty = [testString isNotEmpty];
    STAssertFalse(isNotEmpty, @"isNotEmpty method for empty string must return NO");
}

- (void)testStringWithWhiteSpaces {
    NSString *testString = @"   ";
    
    BOOL isNotEmpty = [testString isNotEmpty];
    STAssertFalse(isNotEmpty, @"isNotEmpty method for empty string with whitespaces must return NO");
}

- (void)testNotEmptyString {
    NSString *testString = @"test";
    
    BOOL isNotEmpty = [testString isNotEmpty];
    STAssertTrue(isNotEmpty, @"isNotEmpty method for not empty string must return YES");
}

- (void)testNotEmptyStringWithWhiteSpaces {
    NSString *testString = @"test";
    
    BOOL isNotEmpty = [testString isNotEmpty];
    STAssertTrue(isNotEmpty, @"isNotEmpty method for not empty string with whitespaces must return YES");
}

#pragma mark - Equality

#pragma mark isEqualToOneOfStrings

- (void)testArrayContainTheSearchString {
    NSString *testString = @"test1";
    NSArray *strings = @[@"test1", @"test2"];
    
    BOOL isEqualToOneOfStrings = [testString isEqualToOneOfStrings:strings];
    STAssertTrue(isEqualToOneOfStrings, @"isEqualToOneOfStrings method for array which contains the search string must return YES");
}

- (void)testArrayNotContainTheSearchString {
    NSString *testString = @"test";
    NSArray *strings = @[@"test1", @"test2"];
    
    BOOL isEqualToOneOfStrings = [testString isEqualToOneOfStrings:strings];
    STAssertFalse(isEqualToOneOfStrings, @"isEqualToOneOfStrings method for array which not contains the search string must return NO");
}

@end
