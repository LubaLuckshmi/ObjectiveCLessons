//
//  AppDelegate.m
//  Seminar05
//
//  Created by Admin on 11.03.2024.
//


#import "AppDelegate.h"
#import "ViewController.h"
#import "SecondViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    ViewController *viewController = [ViewController new];
        UINavigationController *navController1 = [[UINavigationController alloc] initWithRootViewController:viewController];
        navController1.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"First" image:nil tag:0];
        
        SecondViewController *secondViewController = [SecondViewController new];
        UINavigationController *navController2 = [[UINavigationController alloc] initWithRootViewController:secondViewController];
        navController2.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Second" image:nil tag:1];
        
        UITabBarController *tabBarController = [[UITabBarController alloc] init];
        tabBarController.viewControllers = @[navController1, navController2];
        
        self.window.rootViewController = tabBarController;
        [self.window makeKeyAndVisible];
    
    return YES;
}


#pragma mark - UISceneSession lifecycle

//
//- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
//    // Called when a new scene session is being created.
//    // Use this method to select a configuration to create the new scene with.
//    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
//}


//- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
//    // Called when the user discards a scene session.
//    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
//    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
//}


@end
