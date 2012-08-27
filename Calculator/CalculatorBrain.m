//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Siddhartha Pattni on 2012-01-29.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "CalculatorBrain.h"


@implementation CalculatorBrain

-(void)setOperand:(double)aDouble{
	operand = aDouble;
}

-(void)performWaitingOperation{
	if ([@"+" isEqual: waitingOperation]) {
		operand = waitingOperand + operand;
	}
	else if ([@"*" isEqual:waitingOperation]){ 	
		operand = waitingOperand * operand; 
	} 
	else if ([@"-" isEqual:waitingOperation]){
		operand = waitingOperand - operand; 
	}
	else if ([@"/" isEqual:waitingOperation]){
		if (operand) { 
			operand = waitingOperand / operand;
		}
	}
}

-(double)performOperation:(NSString *)operation{
	
	if([@"sqrt" isEqual:operation]){
		operand = sqrt(operand);
	}
	else if([@"+/-" isEqual:operation]){
		operand = - operand;
	}
	else if([@"1/x" isEqual:operation]){
		if (operand) 
		  operand = 1/(operand);
	}
	else if([@"sin" isEqual:operation]){
		operand = sin(operand);
	}
	else if([@"cos" isEqual:operation]){
		operand = cos(operand);
	}
	else if([@"Store" isEqual:operation]){
		//store current value
		memoryOperand = operand;
	}
	else if([@"Recall" isEqual:operation]){
		//recall value in memory
		operand = memoryOperand; 
	}
	else if([@"Mem+" isEqual:operation]){
		//add to current value in mem
		memoryOperand += operand;
	}
	else if([@"C" isEqual:operation]){
		//Clear display
		//Clear waiting operations
		//Clear memory
		operand = 0;
		waitingOperand = 0;
		memoryOperand = 0;
		
	}
	else if([@"π" isEqual: operation]) {
		//set operand to PI
		operand = M_PI;
	}	
	/*else if ([@"del" isEqual: operation]){
		if (operand) { 
			if(operand%10>1)
			operand = operand/10;
		}
	}*/

	else {
	   [self performWaitingOperation];
		waitingOperation = operation;
		waitingOperand = operand;
	}
	return operand;
}

@end
