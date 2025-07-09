//
//  HelloWorldAppViewController.mm
//  HelloWorldApp
//
//  Created by Developer on 2024.
//  Copyright 2024 Example. All rights reserved.
//

#import "HelloWorldAppViewController.h"
#include <iostream>
#include <string>

// C++ class implementation
HelloWorldManager::HelloWorldManager() {
    message = "Hello World from C++!";
}

std::string HelloWorldManager::getHelloMessage() {
    return message;
}

void HelloWorldManager::logMessage(const std::string& msg) {
    std::cout << "C++ Log: " << msg << std::endl;
}

// Objective-C implementation
@implementation HelloWorldAppViewController

@synthesize helloButton;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Initialize C++ manager
    cppManager = new HelloWorldManager();
    
    // Set up the view
    self.view.backgroundColor = [UIColor whiteColor];
    
    // Create and configure the button if not loaded from XIB
    if (!helloButton) {
        helloButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        helloButton.frame = CGRectMake(50, 200, 220, 50);
        [helloButton setTitle:@"点击显示Hello World!" forState:UIControlStateNormal];
        [helloButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        helloButton.titleLabel.font = [UIFont systemFontOfSize:18];
        [helloButton addTarget:self action:@selector(showHelloWorld:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:helloButton];
    }
    
    // Add a title label
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 100, 220, 50)];
    titleLabel.text = @"Objective-C++ Demo";
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.font = [UIFont boldSystemFontOfSize:20];
    titleLabel.textColor = [UIColor darkGrayColor];
    [self.view addSubview:titleLabel];
    [titleLabel release];
    
    // Log initialization using C++
    cppManager->logMessage("HelloWorldAppViewController initialized");
}

- (IBAction)showHelloWorld:(id)sender {
    // Get message from C++ class
    std::string cppMessage = cppManager->getHelloMessage();
    NSString *message = [NSString stringWithUTF8String:cppMessage.c_str()];
    
    // Log the action using C++
    cppManager->logMessage("Button was pressed!");
    
    // Show alert with the message
    UIAlertView *alert = [[UIAlertView alloc] 
                         initWithTitle:@"问候" 
                         message:message 
                         delegate:nil 
                         cancelButtonTitle:@"确定" 
                         otherButtonTitles:nil];
    [alert show];
    [alert release];
    
    // Also log to console
    NSLog(@"Showing alert: %@", message);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    // Clean up C++ object
    if (cppManager) {
        delete cppManager;
        cppManager = nullptr;
    }
    
    [helloButton release];
    [super dealloc];
}

@end