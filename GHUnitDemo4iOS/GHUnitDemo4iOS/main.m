//
//  main.m
//  GHUnitDemo4iOS
//
//  Created by Derek Chen on 4/17/14.
//  Copyright (c) 2014 Derek Chen. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "DCAppDelegate.h"
#import <GHUnitIOS/GHUnitIOSAppDelegate.h>

int main(int argc, char * argv[])
{
    @autoreleasepool {
//        return UIApplicationMain(argc, argv, nil, NSStringFromClass([DCAppDelegate class]));
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([GHUnitIOSAppDelegate class]));
    }
}
