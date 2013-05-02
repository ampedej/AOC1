//
//  ViewController.m
//  testApp
//
//  Created by Edward Murray on 5/1/13.
//  Copyright (c) 2013 Edward Murray. All rights reserved.
//

#import "ViewController.h"
//Define button tags here
#define BUTTON_TAG_ZERO 0
#define BUTTON_TAG_ONE 1
#define BUTTON_TAG_TWO 2

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Change background color
    self.view.backgroundColor = [UIColor colorWithRed:0.941 green:0.945 blue:0.945 alpha:1];
    
    //Label for username
    UILabel *username = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 10.0f, 100.0f, 25.0f)];
    if (username != nil)
    {
        username.backgroundColor = [UIColor colorWithRed:0.941 green:0.945 blue:0.945 alpha:1];
        username.text = @"Username:";
        username.textAlignment = NSTextAlignmentLeft;
        [self.view addSubview: username];
    }
    
    //Text field for username input
    userInput = [[UITextField alloc] initWithFrame:CGRectMake(105.0f, 10.0f, 200.0f, 30.0f)];
    {
        userInput.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview: userInput];
    }
    
    //Button to initiate username login.
    UIButton *loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (loginButton != nil)
    {
        loginButton.frame = CGRectMake(174.0f, 50.0f, 130.0f, 40.0f);
        loginButton.tintColor = [UIColor colorWithRed:0.435 green:0.506 blue:0.596 alpha:1];
        loginButton.tag = BUTTON_TAG_ZERO;
        [loginButton setTitle:@"Login" forState: UIControlStateNormal];
        [loginButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview: loginButton];
    }
    
    //Label with default text for username login.
    //onClick will change default text based on input information.
    defaultText = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 110.0f, 320.0f, 70.0f)];
    if (defaultText != nil)
    {
        defaultText.backgroundColor = [UIColor colorWithRed:0.4 green:0.478 blue:0.573 alpha:1];
        defaultText.text = @"Please Enter Username Above";
        defaultText.textColor = [UIColor whiteColor];
        defaultText.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview: defaultText];
    }
    
    //Button for NSDate
    UIButton *dateButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (dateButton != nil)
    {
        dateButton.frame = CGRectMake(10.0f, 200.0f, 130.0f, 40.0f);
        dateButton.tintColor = [UIColor colorWithRed:0.435 green:0.506 blue:0.596 alpha:1];
        dateButton.tag = BUTTON_TAG_ONE;
        [dateButton setTitle:@"Show Date" forState: UIControlStateNormal];
        [dateButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview: dateButton];
    }
    
    //Button to access information.
    UIButton *infoButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
    if (infoButton != nil)
    {
        infoButton.frame = CGRectMake(10.0f, 280.0f, 30.0f, 30.0f);
        infoButton.tag = BUTTON_TAG_TWO;
        [infoButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview: infoButton];
    }
    
    //Label for information. Text in intially null and is filled when the click action takes place.
    infoText = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 320.0f, 300.0f, 40.0f)];
    if (infoText != nil)
    {
        infoText.backgroundColor = [UIColor colorWithRed:0.941 green:0.945 blue:0.945 alpha:1];
        infoText.text = @"";
        infoText.textColor = [UIColor darkGrayColor];
        infoText.textAlignment = NSTextAlignmentLeft;
        infoText.numberOfLines = 2;
        [self.view addSubview: infoText];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
//Universsal onClick function. Determines which button was pressed.
-(void)onClick:(UIButton*)button
{
    if (button.tag == BUTTON_TAG_ZERO){
        if (userInput.text.length > 0)
        {
            defaultText.text = [NSString stringWithFormat:@"Username: %@ has been logged in", userInput.text];
        } else {
            defaultText.text = @"username can't be empty";
        }
        [userInput resignFirstResponder];
    }
    if (button.tag == BUTTON_TAG_ONE)
    {
        //Not sure if this is how I was suppose to do NSDate but it's the only way I could make it work.
        //If i put it outside the function and declare in the header the value just comes back null.
        NSDate *date = [NSDate date];
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        if (dateFormatter != nil)
        {
            [dateFormatter setDateFormat:@"MMMM/dd/yyyy hh:mm aaa"];
            NSString *todaysDate = [NSString stringWithFormat:@"%@", [dateFormatter stringFromDate:date]];
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Date" message:todaysDate delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            if (alert!= nil)
            {
                [alert show];
            }
        }
    }if (button.tag == BUTTON_TAG_TWO)
    {
        infoText.text = @"This Application Was Created By: Edward Murray";
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
