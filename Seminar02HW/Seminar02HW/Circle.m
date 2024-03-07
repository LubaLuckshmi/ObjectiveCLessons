//
//  Circle.m
//  Seminar02HW
//
//  Created by Admin on 07.03.2024.
//

#import <Foundation/Foundation.h>
#import "Circle.h"

@implementation Circle

- (double)calculateArea {
    return M_PI * self.radius * self.radius;
}

- (double)calculatePerimeter {
    return 2 * M_PI * self.radius;
}

- (void)printInfo {
    NSLog(@"Circle with radius: %f", self.radius);
}

@end
