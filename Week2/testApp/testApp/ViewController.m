//
//  MainViewController.m
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
        title.text = @"Adventures of Huckleberry Finn";
        title.textAlignment = NSTextAlignmentCenter;
    }
    UILabel *author = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 30.0f, 120.0f, 20.0f)];
    if (author != nil)
    {
        author.backgroundColor = [UIColor redColor];
        author.text = @"Author: ";
        author.textAlignment = NSTextAlignmentRight;
        author.textColor = [UIColor whiteColor];
    }
    UILabel *authorName = [[UILabel alloc] initWithFrame:CGRectMake(125.0f, 30.0f, 190.0f, 20.0f)];
    if (author != nil)
    {
        authorName.backgroundColor = [UIColor blueColor];
        authorName.text = @" Mark Twain ";
        authorName.textAlignment = NSTextAlignmentLeft;
        authorName.textColor = [UIColor whiteColor];
    }
    UILabel *publish = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 55.0f, 120.0f, 20.0f)];
    if (author != nil)
    {
        publish.backgroundColor = [UIColor blackColor];
        publish.text = @"Published: ";
        publish.textAlignment = NSTextAlignmentRight;
        publish.textColor = [UIColor whiteColor];
    }
    UILabel *publishDate = [[UILabel alloc] initWithFrame:CGRectMake(125.0f, 55.0f, 190.0f, 20.0f)];
    if (author != nil)
    {
        publishDate.backgroundColor = [UIColor yellowColor];
        publishDate.text = @" December 1884 ";
        publishDate.textAlignment = NSTextAlignmentLeft;
        publishDate.textColor = [UIColor blackColor];
    }
    UILabel *summary = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 80.0f, 120.0f, 20.0f)];
    if (author != nil)
    {
        summary.backgroundColor = [UIColor darkGrayColor];
        summary.text = @" Summary: ";
        summary.textAlignment = NSTextAlignmentLeft;
        summary.textColor = [UIColor whiteColor];
    }
    UILabel *summaryDetail = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 105.0f, 310.0f, 160.0f)];
    if (title != nil)
    {
        summaryDetail.backgroundColor = [UIColor lightGrayColor];
        summaryDetail.text = @" Huckleberry Finn is a poor boy who is abused by his drunk of a father. He has an over adventurous friend named Tom Sawyer. Throught the book Huck meets several other friends who get involved with many adventures and trouble causing situations.";
        summaryDetail.textAlignment = NSTextAlignmentCenter;
        summaryDetail.textColor = [UIColor blackColor];
        summaryDetail.numberOfLines = 8;
    }
    UILabel *listOfItems = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 270.0f, 120.0f, 20.0f)];
    if (author != nil)
    {
        listOfItems.backgroundColor = [UIColor cyanColor];
        listOfItems.text = @" List of Items: ";
        listOfItems.textAlignment = NSTextAlignmentLeft;
        listOfItems.textColor = [UIColor blackColor];
    }
    UILabel *items = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 295.0f, 310.0f, 100.0f)];
    if (title != nil)
    {
        items.backgroundColor = [UIColor orangeColor];
        items.text = @" Items... ";
        items.textAlignment = NSTextAlignmentCenter;
        items.textColor = [UIColor blackColor];
    }
    [self.view addSubview: listOfItems];
    [self.view addSubview: items];
    [self.view addSubview: summaryDetail];
    [self.view addSubview: summary];
    [self.view addSubview: publishDate];
    [self.view addSubview: publish];
    [self.view addSubview: authorName];
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
