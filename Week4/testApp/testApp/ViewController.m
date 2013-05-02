//
//  ViewController.m
//  testApp
//
//  Created by Edward Murray on 5/1/13.
//  Copyright (c) 2013 Edward Murray. All rights reserved.
//

#import "ViewController.h"
#define BUTTON_TAG_ZERO 0
#define BUTTON_TAG_ONE 1
#define BUTTON_TAG_TWO 2

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
    
    userInput = [[UITextField alloc] initWithFrame:CGRectMake(105.0f, 10.0f, 200.0f, 30.0f)];
    {
        userInput.borderStyle = UITextBorderStyleRoundedRect;
    }
    
    UIButton *login = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (login != nil)
    {
        login.frame = CGRectMake(174.0f, 50.0f, 130.0f, 40.0f);
        login.tintColor = [UIColor colorWithRed:0.435 green:0.506 blue:0.596 alpha:1];
        login.tag = BUTTON_TAG_ZERO;
        [login setTitle:@"Login" forState: UIControlStateNormal];
        [login addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    
    defaultText = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 110.0f, 320.0f, 70.0f)];
    if (defaultText != nil)
    {
        defaultText.backgroundColor = [UIColor colorWithRed:0.4 green:0.478 blue:0.573 alpha:1];
        defaultText.text = @"Please Enter Username Above";
        defaultText.textColor = [UIColor whiteColor];
        defaultText.textAlignment = NSTextAlignmentCenter;
    }
    
    UIButton *dateButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (dateButton != nil)
    {
        dateButton.frame = CGRectMake(10.0f, 200.0f, 130.0f, 40.0f);
        dateButton.tintColor = [UIColor colorWithRed:0.435 green:0.506 blue:0.596 alpha:1];
        dateButton.tag = BUTTON_TAG_ONE;
        [dateButton setTitle:@"Show Date" forState: UIControlStateNormal];
        [dateButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    
    UIButton *infoButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
    if (infoButton != nil)
    {
        infoButton.frame = CGRectMake(10.0f, 280.0f, 30.0f, 30.0f);
        infoButton.tag = BUTTON_TAG_TWO;
        [infoButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    
    infoText = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 320.0f, 320.0f, 20.0f)];
    if (infoText != nil)
    {
        infoText.backgroundColor = [UIColor colorWithRed:0.941 green:0.945 blue:0.945 alpha:1];
        infoText.text = @"";
        infoText.textColor = [UIColor darkGrayColor];
        infoText.textAlignment = NSTextAlignmentLeft;
    }
    
    [self.view addSubview: username];
    [self.view addSubview: userInput];
    [self.view addSubview: login];
    [self.view addSubview: defaultText];
    [self.view addSubview: dateButton];
    [self.view addSubview: infoButton];
    [self.view addSubview: infoText];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
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
    }else if (button.tag == BUTTON_TAG_ONE)
    {
        //Not sure if this is how I was suppose to do NSDate but it's the only way I could make it work.
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
    }else{
        infoText.text = @"This Application Was Created By: Edward Murray";
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
