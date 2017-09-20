
/*  This application is a simple calculator  that produce calculation
 */



//  ViewController.h
//  culculator
//
//  Created by Junjie      Li on 2017-01-24.
//  Copyright © 2017 Junjie      Li. All rights reserved.
//

#import <UIKit/UIKit.h>
#include"math.h"
#define Plus 0
#define Minus 1
#define Multiply 2
#define Division 3
#define oneOverX 4
#define radical 5
#define power 6
#define xTOy 7
#define toCube 8 
#define negative 9
#define deleteOne 11
#define decimal 12



@interface ViewController : UIViewController{
    
    int num1;                             // first number
    int num2;                             // second number
    double answer;                        // result
    
    int operand;                          // operators
    NSString* number;                     // number to be parsed in
    Boolean isDecimal;                     // check if the sign is pressed
    IBOutlet UILabel* lableText;
}



@property int num1;                             // first number
@property int num2;                             // second number
@property double answer;                        // result
@property Boolean isPressed;                    // check if the sign is pressed
@property int operand;                          // operators
@property (strong, nonatomic)NSString* number;                     // number to be parsed in
@property (strong, nonatomic)IBOutlet UILabel* lableText;    // nonatomic is multiple treads for variables



@end

