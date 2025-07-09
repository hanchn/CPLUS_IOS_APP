//
//  main.mm
//  HelloWorldApp
//
//  Created by Developer on 2024.
//  Copyright 2024 Example. All rights reserved.
//

#import <UIKit/UIKit.h>

int main(int argc, char *argv[]) {
    
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    int retVal = UIApplicationMain(argc, argv, nil, @"HelloWorldAppAppDelegate");
    [pool release];
    return retVal;
}