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
    
    //4 - Call the Append function with two NSStrings. Capture the result and display a UIAlertView with the appended string using displayAlertWithString.
    NSString * appended = [self append: @"AOC1 " secondString:@"Week 3"];
    [self displayAlertWithString:appended];
    
    NSNumber * addedValue = [self add:5 secondNumber:5];
    
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
    bool comparedNums;
    if (firstNumber == secondNumber)
    {
        comparedNums = YES;
    }else{
        comparedNums = NO;
    }
    return comparedNums;
}

//3 - Create a function called Append. This function will take two NSStrings and return a new NSString containing the appended strings using an NSMutableString and the Append method.
-(NSString *)append:(NSString*)firstString secondString:(NSString*)secondString
{
    NSMutableString *newString = [NSMutableString stringWithString:firstString];
    [newString appendString: secondString];
    return newString;
}

//5 - Create a function called DisplayAlertWithString. This function will take as a parameter an NSString.
-(void)displayAlertWithString:(NSString *)newString
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Information" message:newString delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
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
