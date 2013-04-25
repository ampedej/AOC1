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
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

 //1 -
-(NSNumber *)add:(NSInteger)firstNumber secondNumber:(NSInteger)secondNumber
{    
    return [NSNumber numberWithInteger:(firstNumber + secondNumber)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
