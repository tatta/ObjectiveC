//
//  CalculatorAppDelegate.m
//  Calculator
//
//  Created by Siddhartha Pattni on 2012-01-29.
//  Copyright __MyCompanyName__ 2012. All rights reserved.
//

#import "CalculatorAppDelegate.h"
#import "CalculatorViewController.h"

@implementation CalculatorAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
