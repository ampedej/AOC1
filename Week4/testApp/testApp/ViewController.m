//
//  ViewController.m
//  testApp
//
//  Created by Edward Murray on 5/1/13.
//  Copyright (c) 2013 Edward Murray. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor colorWithRed:0.941 green:0.945 blue:0.945 alpha:1];
    
    //Label for username
    UILabel *username = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 10.0f, 100.0f, 25.0f)];
    if (username != nil)
    {
        username.backgroundColor = [UIColor colorWithRed:0.941 green:0.945 blue:0.945 alpha:1];
        username.text = @"Username:";
        username.textAlignment = NSTextAlignmentLeft;
    }
    
    UITextField *userInput = [[UITextField alloc] initWithFrame:CGRectMake(105.0f, 10.0f, 200.0f, 30.0f)];
    {
        userInput.borderStyle = UITextBorderStyleRoundedRect;
    }
    
    [self.view addSubview: username];
    [self.view addSubview: userInput];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
