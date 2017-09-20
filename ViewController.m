
/*  This application is a simple calculator  that produce calculation
 */

//  ViewController.m
//  culculator
//
//  Created by Junjie      Li on 2017-01-24.
//  Copyright © 2017 Junjie      Li. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize  num1, num2, answer, operand, number, lableText, isPressed;

- (void)viewDidLoad {    // constructor for the screen
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setNum1:0];
    [self setNum2:0];
    [self setOperand:Plus];
    [self setAnswer:0.0];
    [self setNumber:@"0"];
    [self printNumber];
    isDecimal=false;

}



-(void) printNumber{   // display the number
    [lableText setText:number];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
-(void)printError{
    [lableText setText:@"error"];
}
*/

-(void) saveNum1{
    num1= [number integerValue];   // convert from string to int
    number=@"0";                   // reset the number to 0
    [self printNumber];            // update the number
    
}



-(IBAction)calculate:(id)sender{   // proccessing the result
    num2= [number intValue];
    
    if(operand==Plus){             // addition processing
        
        answer=num1+num2;
    }
    else if(operand==Minus){       // minus processing
        answer=num1-num2;
    }
    else if(operand==Multiply){    // multiplication processing
        answer=num1*num2;
    }
    
    else if(operand==Division){    // devision processing
        //if(num2==0){
            //[self printError]
        //}
        //else{
            answer= (double)num1/(double)num2;        // have to cast int to double cuz otherwise it will result in zero (trunk off the decimal part)
        //}
    }
    
    else if(operand==radical){     // square root x
        answer=sqrt(num1);
    }
    
    else if(operand==power){       // x^2
        answer= pow(num1,2);
    }
    
    else if(operand==toCube){      // x^3
        answer=pow(num1,3);
    }
    
    else if(operand==xTOy){        // x^y
        answer=pow(num1,num2);
    }
    
    else if(operand==oneOverX){     // 1/x
        answer=pow(num1,-1);
    }
    
    else if(operand==negative){     // negative sign
        answer=num1*(-1);
    }
    
    else if(operand==decimal){      // decimal
        answer=num1*0.1;
        
    }
    else if(operand==deleteOne){
       
    }
   
    
    number=[NSString stringWithFormat:@"%.2f",answer];     // converting from strings to double
    [self printNumber];
    num1=0;                        // reset number1
    num2=0;                        // resent number2
    answer=0.0;                    // resent the number to 0.0
}

   /*numbers*/

- (IBAction)nine:(id)sender {      // an event handler for number 9
    number=[number stringByAppendingString:@"9"];
    [self printNumber];            // print 9

}

- (IBAction)eight:(id)sender {
    number=[number stringByAppendingString:@"8"];
    [self printNumber];            // prints 8
}

- (IBAction)seven:(id)sender {
    number=[number stringByAppendingString:@"7"];
    [self printNumber];            // prints 7
}

- (IBAction)six:(id)sender {
    number=[number stringByAppendingString:@"6"];
    [self printNumber];            // prints 6
}

- (IBAction)five:(id)sender {
    number=[number stringByAppendingString:@"5"];
    [self printNumber];            // prints 5
}

- (IBAction)four:(id)sender {
    number=[number stringByAppendingString:@"4"];
    [self printNumber];            // prints 4
}

- (IBAction)three:(id)sender {
    number=[number stringByAppendingString:@"3"];
    [self printNumber];            // prints 3
}

- (IBAction)two:(id)sender {
    number=[number stringByAppendingString:@"2"];
    [self printNumber];            // prints 2
}

- (IBAction)one:(id)sender {
    number=[number stringByAppendingString:@"1"];
    [self printNumber];            // prints 1
}

- (IBAction)zero:(id)sender {
    number=[number stringByAppendingString:@"0"];
    [self printNumber];            // prints 0
}


   /*symbols*/

- (IBAction)delete:(id)sender {
    
}

- (IBAction)clear:(id)sender {        // clear numbers
    number=@"0";
    [self printNumber];
}

- (IBAction)addition:(id)sender {     // operand for addition
    [self saveNum1];
    operand=Plus;
    
}

- (IBAction)subtraction:(id)sender {  // operand for subtraction
    [self saveNum1];
    operand=Minus;
}

- (IBAction)multiplication:(id)sender {  // operand for multiplication
    [self saveNum1];
    operand=Multiply;
}

- (IBAction)division:(id)sender {     // operand for division
    [self saveNum1];
    operand=Division;
    
}

- (IBAction)reciprocal:(id)sender {   // operand for reciprocal
    [self saveNum1];
    operand=oneOverX;
}

- (IBAction)radicall:(id)sender {     // operand for radical
    [self saveNum1];
    operand=radical;
}

- (IBAction)powerr:(id)sender {       // operand for power x^2
    [self saveNum1];
    operand=power;
}

- (IBAction)xTothePowerY:(id)sender {  // operand for x^y
    [self saveNum1];
    operand=xTOy;
}

- (IBAction)cube:(id)sender {         // operand for x^3
    [self saveNum1];
    operand=toCube;
    
}

-(IBAction)negati:(id)sender{         // operand for plus or minus
    [self saveNum1];
    operand=negative;
}

-(IBAction)dot:(id)sender{           // decimal
    [self saveNum1];
    operand=decimal;
}


@end
