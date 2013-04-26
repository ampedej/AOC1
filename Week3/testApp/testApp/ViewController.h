//
//  ViewController.h
//  testApp
//
//  Created by Edward Murray on 4/24/13.
//  Copyright (c) 2013 Edward Murray. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

-(NSNumber *)Add:(NSInteger)firstNumber secondNumber:(NSInteger)secondNumber;
-(BOOL)Compare:(NSInteger)firstNumber secondNumber:(NSInteger)secondNumber;
-(NSString *)Append:(NSString*)firstString secondString:(NSString*)secondString;
-(void)DisplayAlertWithString:(NSString *)newString title:(NSString*)title;

@end
