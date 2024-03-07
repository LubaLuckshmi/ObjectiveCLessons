//
//  Triangle.m
//  Seminar02HW
//
//  Created by Admin on 07.03.2024.
//

#import <Foundation/Foundation.h>
#import "Triangle.h"

@implementation Triangle

- (double)calculateArea {
    double p = (self.sideA + self.sideB + self.sideC) / 2; // Полупериметр
    return sqrt(p * (p - self.sideA) * (p - self.sideB) * (p - self.sideC));
}

- (double)calculatePerimeter {
    return self.sideA + self.sideB + self.sideC;
}

- (void)printInfo {
    NSLog(@"Triangle with sides: %f, %f, %f", self.sideA, self.sideB, self.sideC);
}

@end
