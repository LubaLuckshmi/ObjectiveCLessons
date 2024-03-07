//
//  Rectangle.m
//  Seminar02HW
//
//  Created by Admin on 07.03.2024.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"

@implementation Rectangle

- (double)calculateArea {
    return self.width * self.height;
}

- (double)calculatePerimeter {
    return 2 * (self.width + self.height);
}

- (void)printInfo {
    NSLog(@"Rectangle with width: %f and height: %f", self.width, self.height);
}

@end
