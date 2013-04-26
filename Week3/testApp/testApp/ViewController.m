//
//  ViewController.m
//  testApp
//
//  Created by Edward Murray on 4/24/13.
//  Copyright (c) 2013 Edward Murray. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Changed order of function calls so the order has a beter flow.
    //Apped is last so it is the first to dismiss (user sees it first in a sense).
    
    //9 - Call the Compare function with two integer values. If Compare returns YES, display an UIAlertView both with the input values and the result using
    //    the DisplayAlertWithString function
    
    //Had to create variables to pass into title string
    int first = 5;
    int second = 5;
    
    BOOL compared = [self compare:first secondNumber: second];
    
    //Title for compare function display alert.
    NSString * compareTitle = [NSString stringWithFormat:@"Are %d and %d equal?", first, second];
    [self displayAlertWithString:compared ? @"YES" : @"NO" title:compareTitle];
    
    //6 - Call the Add function passing in two integer values. Capture the return of this function into a variable.
    NSNumber * addedValue = [self add:5 secondNumber:5];
    
    //7 - Bundle the returned integer into an NSNumber and then convert it to a NSString and pass it to the DisplayAlertWithString function.
    //Initially returned an NSNumber in add function. Think i did this right.
    NSString *addedString = [NSString stringWithFormat:@"%@", addedValue ];
    
    //8 - Give it some text for the title. The message will read, "The number is 00". Replace the 00 with the integer passed into the function.
    NSString *addedMessage = [NSString stringWithFormat:@"The number is: %@", addedString];
    [self displayAlertWithString:addedMessage title:@"Number Value?"];
    
    //4 - Call the Append function with two NSStrings. Capture the result and display a UIAlertView with the appended string using displayAlertWithString.
    NSString * appended = [self append: @"AOC1 " secondString:@"Week 3"];
    [self displayAlertWithString:appended title: @"Edward Murray"];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

 //1 - Create a function called Add. This function will take two NSInteger or int types and return the result of an addition between these two.
-(NSNumber *)add:(NSInteger)firstNumber secondNumber:(NSInteger)secondNumber
{    
    return [NSNumber numberWithInteger:(firstNumber + secondNumber)];
}

//2 - Create a BOOL function called Compare that takes two NSInteger values. Return YES or NO based on whether the values are equal.
-(BOOL)compare:(NSInteger)firstNumber secondNumber:(NSInteger)secondNumber
{
    //Created variable for return result for call display.
    BOOL comparison;
    
    if (firstNumber == secondNumber)
    {
        comparison = YES;
        
    }else{
        
        comparison = NO;
    }
    return comparison;
}

//3 - Create a function called Append. This function will take two NSStrings and return a new NSString containing the appended strings using an NSMutableString and the Append method.
-(NSString *)append:(NSString*)firstString secondString:(NSString*)secondString
{
    NSMutableString *newString = [NSMutableString stringWithString:firstString];
    [newString appendString: secondString];
    return newString;
}

//5 - Create a function called DisplayAlertWithString. This function will take as a parameter an NSString.
//Added second parameter to dynamically change title and message based on values in the call.
-(void)displayAlertWithString:(NSString *)newString title:(NSString *)title
{
    //DisplayAlertWithString Function
    //1 - Take the passed in NSString and display it in the alert view
    //2 - Create an UIAlertView
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:newString delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    if (alert!= nil)
    {
        [alert show];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
