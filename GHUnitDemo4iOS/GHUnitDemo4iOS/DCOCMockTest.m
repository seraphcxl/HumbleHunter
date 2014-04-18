//
//  DCOCMockTest.m
//  GHUnitDemo
//
//  Created by Derek Chen on 3/13/14.
//  Copyright (c) 2014 CaptainSolid Studio. All rights reserved.
//

#import "DCOCMockTest.h"
#import "OCMock.h"

@implementation DCOCMockTest

- (void)testOCMockPass {
    id mock = [OCMockObject mockForClass:NSString.class];
    [[[mock stub] andReturn:@"mocktest"] lowercaseString];
    
    NSString *returnValue = [mock lowercaseString];
    GHAssertEqualObjects(@"mocktest", returnValue, @"Should have returned the expected string.");
}

- (void)testOCMockFail {
    id mock = [OCMockObject mockForClass:NSString.class];
    [[[mock stub] andReturn:@"mocktest"] lowercaseString];
    NSString *returnValue = [mock lowercaseString];
    GHAssertEqualObjects(@"thisIsTheWrongValueToCheck", returnValue, @"Should have returned the expected string.");
}

@end
