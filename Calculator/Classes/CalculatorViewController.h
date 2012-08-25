//
//  CalculatorViewController.h
//  Calculator
//
//  Created by Siddhartha Pattni on 2012-01-29.
//  Copyright __MyCompanyName__ 2012. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculatorBrain.h"


@interface CalculatorViewController : UIViewController {
	
	IBOutlet UILabel *display;
	CalculatorBrain *brain;
	BOOL userIsInTheMiddleOfTypingANumber;
}
-(IBAction)digitPressed:(UIButton *)sender;
-(IBAction)operationPressed:(UIButton *)sender;


@end

