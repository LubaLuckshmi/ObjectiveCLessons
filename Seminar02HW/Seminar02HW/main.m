//
//  main.m
//  Seminar02HW
//
//  Created by Admin on 07.03.2024.
//

#import <Foundation/Foundation.h>
#import "Figure.h"
#import "Circle.h"
#import "Triangle.h"
#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        Circle *circle = [[Circle alloc] init];
//        circle.radius = 5.0;
//
//        NSLog(@"Area: %f", [circle calculateArea]);
//        NSLog(@"Perimeter: %f", [circle calculatePerimeter]);
//
//        [circle printInfo];
//        
//        Rectangle *rectangle = [[Rectangle alloc] init];
//        rectangle.width = 4.0;
//        rectangle.height = 3.0;
//
//        NSLog(@"Area of rectangle: %f", [rectangle calculateArea]);
//        NSLog(@"Perimeter of rectangle: %f", [rectangle calculatePerimeter]);
//
//        [rectangle printInfo];
//
//        Triangle *triangle = [[Triangle alloc] init];
//        triangle.sideA = 3.0;
//        triangle.sideB = 4.0;
//        triangle.sideC = 5.0;
//
//        NSLog(@"Area of triangle: %f", [triangle calculateArea]);
//        NSLog(@"Perimeter of triangle: %f", [triangle calculatePerimeter]);
//
//        [triangle printInfo];
        
        NSMutableArray *figures = [NSMutableArray array];
        Circle *circle = [[Circle alloc] init];
        circle.radius = 5.0;
        [figures addObject:circle];

        Rectangle *rectangle = [[Rectangle alloc] init];
        rectangle.width = 4.0;
        rectangle.height = 3.0;
        [figures addObject:rectangle];

        Triangle *triangle = [[Triangle alloc] init];
        triangle.sideA = 3.0;
        triangle.sideB = 4.0;
        triangle.sideC = 5.0;
        [figures addObject:triangle];
        for (Figure *figure in figures) {
            [figure printInfo];
            NSLog(@"Area: %f", [figure calculateArea]);
            NSLog(@"Perimeter: %f", [figure calculatePerimeter]);
            NSLog(@"----------------------------------");
        }
    }
    return 0;
}
