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
    //1 - Background color change.
    self.view.backgroundColor = [UIColor whiteColor];
    
    //Book Information
    //1 - Label for title
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 5.0f, 310.0f, 25.0f)];
    if (title != nil)
    {
        title.backgroundColor = [UIColor greenColor];
        title.text = @"Adventures of Huckleberry Finn";
        title.textAlignment = NSTextAlignmentCenter;
    }
    
    //2 - Label for author
    UILabel *author = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 35.0f, 120.0f, 25.0f)];
    if (author != nil)
    {
        author.backgroundColor = [UIColor redColor];
        author.text = @"Author: ";
        author.textAlignment = NSTextAlignmentRight;
        author.textColor = [UIColor whiteColor];
    }
    
    //3 - Label for author name
    UILabel *authorName = [[UILabel alloc] initWithFrame:CGRectMake(125.0f, 35.0f, 190.0f, 25.0f)];
    if (author != nil)
    {
        authorName.backgroundColor = [UIColor blueColor];
        authorName.text = @" Mark Twain ";
        authorName.textAlignment = NSTextAlignmentLeft;
        authorName.textColor = [UIColor whiteColor];
    }
    
    //4 - Label for published
    UILabel *publish = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 65.0f, 120.0f, 25.0f)];
    if (author != nil)
    {
        publish.backgroundColor = [UIColor blackColor];
        publish.text = @"Published: ";
        publish.textAlignment = NSTextAlignmentRight;
        publish.textColor = [UIColor whiteColor];
    }
    
    //5 - Label for published date
    UILabel *publishDate = [[UILabel alloc] initWithFrame:CGRectMake(125.0f, 65.0f, 190.0f, 25.0f)];
    if (author != nil)
    {
        publishDate.backgroundColor = [UIColor yellowColor];
        publishDate.text = @" December 1884 ";
        publishDate.textAlignment = NSTextAlignmentLeft;
        publishDate.textColor = [UIColor blackColor];
    }
    
    //6 - Label for summary
    UILabel *summary = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 95.0f, 120.0f, 25.0f)];
    if (author != nil)
    {
        summary.backgroundColor = [UIColor darkGrayColor];
        summary.text = @" Summary: ";
        summary.textAlignment = NSTextAlignmentLeft;
        summary.textColor = [UIColor whiteColor];
    }
    
    //7 - Label for summary details
    UILabel *summaryDetail = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 125.0f, 310.0f, 160.0f)];
    if (title != nil)
    {
        summaryDetail.backgroundColor = [UIColor lightGrayColor];
        summaryDetail.text = @" Huckleberry Finn is a poor boy who is abused by his drunk of a father. He has an over adventurous friend named Tom Sawyer. Throught the book Huck meets several other friends who get involved with many adventures and trouble causing situations.";
        summaryDetail.textAlignment = NSTextAlignmentCenter;
        summaryDetail.textColor = [UIColor blackColor];
        summaryDetail.numberOfLines = 8;
    }
    
    //Labels and Arrays
    //1 - Create an NSArray of 5 items
    NSArray * ItemsListArray = [[NSArray alloc] initWithObjects:@"Huckleberry Finn, ", @"Tom Sawyer, ", @"Widow Douglas, ", @"Gold, ", @" and Adventure!", nil];
    
    //2 - Create a variable of type NSMutableString and allocate it. Loop through the NSArray you created and append each of these items to your NSMutableString
    NSMutableString *itemsInArray = [[NSMutableString alloc] init];
    for (int i=0; i<ItemsListArray.count; i++)
    {
        [itemsInArray appendString:ItemsListArray[i]];
    }
    
    //3 - Create a label with the text "List of items" and add it to the parent view
    UILabel *listOfItems = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 290.0f, 120.0f, 25.0f)];
    if (author != nil)
    {
        listOfItems.backgroundColor = [UIColor cyanColor];
        listOfItems.text = @" List of Items: ";
        listOfItems.textAlignment = NSTextAlignmentLeft;
        listOfItems.textColor = [UIColor blackColor];
    }
    
    //4 - Create another label beneath and set the text to the NSMutableString text
    UILabel *items = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 320.0f, 310.0f, 70.0f)];
    if (title != nil)
    {
        items.backgroundColor = [UIColor orangeColor];
        items.text = itemsInArray;
        items.textAlignment = NSTextAlignmentCenter;
        items.textColor = [UIColor blackColor];
        items.numberOfLines = 2;
    }
    
    //Add labels to the view
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
