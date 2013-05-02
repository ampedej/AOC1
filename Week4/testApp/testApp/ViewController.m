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
    
    UIButton *date = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (login != nil)
    {
        date.frame = CGRectMake(10.0f, 200.0f, 130.0f, 40.0f);
        date.tintColor = [UIColor colorWithRed:0.435 green:0.506 blue:0.596 alpha:1];
        date.tag = BUTTON_TAG_ONE;
        [date setTitle:@"Show Date" forState: UIControlStateNormal];
        [date addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    
    [self.view addSubview: username];
    [self.view addSubview: userInput];
    [self.view addSubview: login];
    [self.view addSubview: defaultText];
    [self.view addSubview: date];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
-(void)onClick:(UIButton*)button
{
    if (button.tag == BUTTON_TAG_ZERO){
        if (userInput.text.length > 0)
        {
            defaultText.text = [NSString stringWithFormat:@"Usernam: %@ has been logged", userInput.text];
        } else {
            defaultText.text = @"username can't be empty";
        }
    }
    if (button.tag == BUTTON_TAG_ONE)
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Test" message:@"testing" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        if (alert!= nil)
        {
            [alert show];
        }

    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
