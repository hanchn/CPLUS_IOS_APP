//
//  HelloWorldAppAppDelegate.h
//  HelloWorldApp
//
//  Created by Developer on 2024.
//  Copyright 2024 Example. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HelloWorldAppViewController;

@interface HelloWorldAppAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    HelloWorldAppViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet HelloWorldAppViewController *viewController;

@end