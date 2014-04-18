//
//  main.m
//  GHUnitDemo4MacOS
//
//  Created by Derek Chen on 4/17/14.
//  Copyright (c) 2014 Derek Chen. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import <GHUnitOSX/GHUnit.h>
#import <GHUnitOSX/GHTestApp.h>

int main(int argc, const char * argv[])
{
//    return NSApplicationMain(argc, argv);
    @autoreleasepool {
        
        // Register any special test case classes
        //[[GHTesting sharedInstance] registerClassName:@"GHSpecialTestCase"];
        
        int retVal = 0;
        // If GHUNIT_CLI is set we are using the command line interface and run the tests
        // Otherwise load the GUI app
        if (getenv("GHUNIT_CLI")) {
            retVal = [GHTestRunner run];
        } else {
            // To run all tests (from ENV)
            [[GHTestApp alloc] init];
            // To run a different test suite:
            //GHTestSuite *suite = [GHTestSuite suiteWithTestFilter:@"GHSlowTest,GHAsyncTestCaseTest"];
            //GHTestApp *app = [[GHTestApp alloc] initWithSuite:suite];
            // Or set global:
            //GHUnitTest = @"GHSlowTest";
            [NSApp run];
        }
        return retVal;
    }
}
