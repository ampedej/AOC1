//
//  AppDelegate.m
//  testApp
//
//  Created by Edward Murray on 4/11/13.
//  Copyright (c) 2013 Edward Murray. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    //(1)Create a new Empty Application Project
    //Variables
    int bulletsLeft = 0;
    int targetsLeft = 0;
    int targetsHit = 10 - (int)targetsLeft;
    float pointsTarget = 2.35;//(2-1)Create a variable using the float data type.
    float result = targetsHit * pointsTarget;
    int targetsReady = 10;
    bool shooterReady = YES;
    float timeToBeat = 10.35;
    int shootersLeft = 1;
    //(3)Perform an AND, OR comparison. Use float, int and BOOL types. BOOL values should be YES or NO and written in all caps.
    if ((targetsReady == 10) && (shooterReady == YES))
    {
        NSLog(@"Shooter is ready, the time to beat is %.2f seconds", timeToBeat);
        
        //(5)Perform a single for loop printing out values to the console
        //(6)Perform a nested loop printing out values to the console
        for (int x=1; x <= targetsHit; x++)
        {
            NSLog(@"%d targets hit!", x);
        }
        
        //(4)Use an if, else if and else check using any of the data types of your choice.
        if ((targetsHit == 10) || (targetsLeft == 0)) {
            NSLog(@"You hit all 10 targets");
        } else if ((bulletsLeft == 0) && (targetsLeft > 0))
        {
            NSLog(@"You ran out of bullets with targets left.");
        } else
        {
            NSLog(@"You still have bullets and targets, KEEP SHOOTING!");
        }
        
        //(2-2)Cast the float to an int and using NSLog, output both the initial float value as well as the int value.
        //Had to add in else, else if, else statement to make the story work.
        if (targetsHit == 10)
        {
            NSLog(@"Your total points: %.2f (rounded off %d). ", result, (int)result );
        } else if ((targetsHit < 10) && (bulletsLeft == 0))
        {
            NSLog(@"You failed, no score awarded.");
        } else
        {
            NSLog(@"Competition still in progress. Can't total points yet.");
        }
        //(7)Perform a while loop that increments an int variable and outputs to the console.
        while (shootersLeft < 5)
        {
            NSLog(@"Shooter %d has competed", shootersLeft);
            shootersLeft++;
        }
        
    } else
    {
        NSLog(@"We are not ready to start");
    }
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
