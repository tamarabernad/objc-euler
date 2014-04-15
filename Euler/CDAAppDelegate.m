//
//  CDAAppDelegate.m
//  Euler
//
//  Created by Tamara Bernad on 14/04/14.
//  Copyright (c) 2014 Code d'Azur. All rights reserved.
//

#import "CDAAppDelegate.h"

@implementation CDAAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    NSInteger problem1 = [self getSumatoryOfMultipesOf:3 And:5 Below:1000];
    NSLog(@"problem1::%i",problem1);
    NSInteger problem2 = [self getSumFibonnachiEven:4000000];
    NSLog(@"problem2::%i",problem2);
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
- (NSInteger)getSumatoryOfMultipesOf:(NSInteger )number1 And:(NSInteger )number2 Below:(NSInteger)belowNumber{
    NSInteger n1 = (belowNumber-1)/number1;
    NSInteger n2 = (belowNumber-1)/number2;
    int sum =0;
    for (int i=0; i<n1; i++) {
        sum += number1*(i+1);
    }
    int n;
    for (int i=0; i<n2; i++) {
        n =number2*(i+1);
        if(n%number1 != 0){
            sum += n;
        }
    }

    return sum;
    
}
- (NSInteger)getSumFibonnachiEven:(NSInteger)max{
    // Pre: max = 400000
    NSInteger sum =0;
    double phi = (1+ sqrt(5.0))/2;
    NSInteger fn;
    // one out of 3 terms is even
    for(int i=0;i<=max;i= i+3){
        fn = (pow(phi,i) - pow(1-phi,i))/sqrt(5.0);
        if (fn >= max) {
            break;
        }
        sum+=fn;
    }
    return sum;
}
@end
