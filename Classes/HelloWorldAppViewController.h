//
//  HelloWorldAppViewController.h
//  HelloWorldApp
//
//  Created by Developer on 2024.
//  Copyright 2024 Example. All rights reserved.
//

#import <UIKit/UIKit.h>

// C++ class declaration
class HelloWorldManager {
public:
    HelloWorldManager();
    std::string getHelloMessage();
    void logMessage(const std::string& message);
private:
    std::string message;
};

@interface HelloWorldAppViewController : UIViewController {
    UIButton *helloButton;
    HelloWorldManager *cppManager;
}

@property (nonatomic, retain) IBOutlet UIButton *helloButton;

- (IBAction)showHelloWorld:(id)sender;

@end