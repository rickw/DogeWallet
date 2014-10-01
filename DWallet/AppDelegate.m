//
//  AppDelegate.m
//  DWallet
//
//  Created by Brad Slayter on 2/4/14.
//  Copyright (c) 2014 Brad Slayter. All rights reserved.
//

#import "AppDelegate.h"
#import "AccessViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
	//mkdir("/var/mobile/Library/DWallet/Documents", 0755);
	
	//NSError *error;
	//[[NSFileManager defaultManager] createDirectoryAtPath:@"/var/mobile/Library/DWallet/Documents" withIntermediateDirectories:YES attributes:nil error:&error];
	
	//NSLog(@"%@", error.localizedDescription);
	
    
    
	[[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:0.862745098039216 green:0.807843137254902 blue:0.63921568627451 alpha:1.0]];
	[[UINavigationBar appearance] setTintColor:[UIColor colorWithRed:0.172549019607843 green:0.172549019607843 blue:0.172549019607843 alpha:1.0]];
	[[UIToolbar appearance] setBarTintColor:[UIColor colorWithRed:0.862745098039216 green:0.807843137254902 blue:0.63921568627451 alpha:1.0]];
	
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    dispatch_async(dispatch_get_main_queue(), ^{
        [(UINavigationController *)self.window.rootViewController popViewControllerAnimated:NO];
    });
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
