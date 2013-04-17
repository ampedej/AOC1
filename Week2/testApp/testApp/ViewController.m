//
//  ViewController.m
//  testApp
//
//  Created by Edward Murray on 4/16/13.
//  Copyright (c) 2013 Edward Murray. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 5.0f, 310.0f, 20.0f)];
    if (title != nil)
    {
        title.backgroundColor = [UIColor greenColor];
        title.text = @"Title";
        title.textAlignment = NSTextAlignmentCenter;
    }
    UILabel *author = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 25.0f, 70.0f, 20.0f)];
    if (author != nil)
    {
        author.backgroundColor = [UIColor redColor];
        author.text = @"Author: ";
        author.textAlignment = NSTextAlignmentRight;
        author.textColor = [UIColor whiteColor];
    }
    [self.view addSubview: author];
    [self.view addSubview: title];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
