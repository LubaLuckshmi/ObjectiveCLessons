//
//  main.m
//  Seminar04HW
//
//  Created by Admin on 11.03.2024.
//

#import <Foundation/Foundation.h>
#import "Robot.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Robot *robot = [[Robot alloc] init];
        
        [robot run:^{
            return @"up";
        }];
        
        [robot run:^{
            return @"right";
        }];
        
        [robot run:^{
            return @"down";
        }];
        
        NSLog(@"Robot's coordinates: %d, %d", robot.x, robot.y);
    }
    return 0;
}
