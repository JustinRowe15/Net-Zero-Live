//
//  AppDelegate.m
//  Net Zero Live
//
//  Created by Justin and Emma on 4/20/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import "AppDelegate.h"
#import "LeftViewController.h"
#import "RightViewController.h"
#import "LeftPersonnelViewController.h"
#import "RightPersonnelViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    UISplitViewController * splitViewController1 = [[UISplitViewController alloc] init];
    UINavigationController *leftNavController = [splitViewController1.viewControllers objectAtIndex:0];
    LeftViewController *leftViewController = (LeftViewController *)[leftNavController topViewController];
    RightViewController *rightViewController = [splitViewController1.viewControllers objectAtIndex:1];
    
    UISplitViewController * splitViewController2 = [[UISplitViewController alloc] init];
    UINavigationController * leftNavController2 = [splitViewController2.viewControllers objectAtIndex:0];
    LeftPersonnelViewController * leftViewController2 = (LeftPersonnelViewController *)[leftNavController2 topViewController];
    RightPersonnelViewController * rightViewController2 = [splitViewController2.viewControllers objectAtIndex:1];
    
    Equipment * firstEquipment = [[leftViewController solutions] objectAtIndex:0];
    [rightViewController setEquipment:firstEquipment];
    leftViewController.delegate = rightViewController;
    splitViewController1.delegate = rightViewController;
    
    Personnel * firstPersonnel = [[leftViewController2 people] objectAtIndex:0];
    [rightViewController2 setPersonnel:firstPersonnel];
    leftViewController2.delegate = leftViewController2;
    splitViewController2.delegate = rightViewController2;
    
    self.tabBarController = [[UITabBarController alloc] init];
    self.tabBarController.viewControllers = @[splitViewController1, splitViewController2];
    self.window.rootViewController = self.tabBarController;
    [self.window makeKeyAndVisible];
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
