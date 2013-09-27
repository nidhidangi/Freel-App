//
//  FreelAppDelegate.m
//  Freel
//
//  Created by VVDN on 24/09/13.
//  Copyright (c) 2013 VVDN. All rights reserved.
//

#import "FreelAppDelegate.h"


@implementation FreelAppDelegate



#define IS_IPHONE (!IS_IPAD)
#define IS_IPAD (UI_USER_INTERFACE_IDIOM() != UIUserInterfaceIdiomPhone)


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
            //***************************************   To give the colour to the nevigation bar   ****************************************//
            // Override point for customization after application launch.
            UIImage *navBackgroundImage = [UIImage imageNamed:@"navbar_bg"];
            [[UINavigationBar appearance] setBackgroundImage:navBackgroundImage forBarMetrics:UIBarMetricsDefault];
    
    
    
            //************************************ To give the image to the button on nevigation bar **************************************//
            UIImage *backButtonImage = [[UIImage imageNamed:@"back"]resizableImageWithCapInsets:UIEdgeInsetsMake(0,13,0,6)];
            [[UIBarButtonItem appearance] setBackgroundImage:backButtonImage forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    
    
    
            //********************************  To run the appliction on iPhone(retina 3.5 and 4)and iPad  ********************************//
            bool isiPhone5 = CGSizeEqualToSize([[UIScreen mainScreen] preferredMode].size,CGSizeMake(640, 1136));
            if (isiPhone5)
            {
                //********************************************* Load iPhone 5 Storyboard  ***********************************************//
                    UIStoryboard *storyBoard;
                    storyBoard = [UIStoryboard storyboardWithName:@"MainStoryboard_iphone5" bundle:nil];
                    UIViewController *initViewController = [storyBoard instantiateInitialViewController];
                    [self.window setRootViewController:initViewController];
            }
    
    else if (IS_IPAD)
            {
                //************************************************  Load IPAD StoryBoard  ************************************************//
                    UIStoryboard *storyBoard;
                    storyBoard = [UIStoryboard storyboardWithName:@"MainStoryboard_iPad" bundle:nil];
                    UIViewController *initViewController = [storyBoard instantiateInitialViewController];
                    [self.window setRootViewController:initViewController];
            }
    
    else
            {
                //******************************************  Load the iPhone 3.5" storyboard  ********************************************//
                    UIStoryboard *storyBoard;
                    storyBoard = [UIStoryboard storyboardWithName:@"MainStoryboard_iPhone" bundle:nil];
                    UIViewController *initViewController = [storyBoard instantiateInitialViewController];
                    [self.window setRootViewController:initViewController]; 
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
