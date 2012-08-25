//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Siddhartha Pattni on 2012-01-29.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface CalculatorBrain : NSObject {
	double operand;
	NSString *waitingOperation;
	double waitingOperand;
	double memoryOperand;
	
}

-(void)setOperand:(double)aDouble;
-(double)performOperation:(NSString *)operation;

@end
