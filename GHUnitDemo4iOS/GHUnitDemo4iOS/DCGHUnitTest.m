//
//  DCGHUnitTest.m
//  GHUnitDemo
//
//  Created by Derek Chen on 3/13/14.
//  Copyright (c) 2014 CaptainSolid Studio. All rights reserved.
//

#import "DCGHUnitTest.h"

@implementation DCGHUnitTest

- (void)testStrings {
    NSString *string1 = @"a string";
    GHTestLog(@"I can log to the GHUnit test console: %@", string1);
    // Assert string1 is not NULL, with no custom error description
    GHAssertNotNULL(string1, nil);
    // Assert equal objects, add custom error description
    NSString *string2 = @"a string";
    GHAssertEqualObjects(string1, string2, @"A custom error message. string1 should be equal to: %@.", string2);
}

- (void)testSimpleFail {
    GHAssertTrue(NO, nil);
}

@end
