//
//  AppDelegate.h
//  Seminar03
//
//  Created by Admin on 08.03.2024.
//

#import <Foundation/Foundation.h>



@interface AppDelegate : NSObject
-(BOOL) application: (UIApplication *) application didFinishLaunchingWithOptions: (NSDictionary *) launchOptions {
    Demo *demo = [[Demo alloc] init];
    [demo execute];
    [demo release];
    return YES;
}
@end


