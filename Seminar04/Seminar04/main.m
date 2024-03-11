//
//  main.m
//  Seminar04
//
//  Created by Admin on 11.03.2024.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int (^myBlock)(float) = ^int() {
            return (int) (param +1);
            
        }
        myBlock(2.6);
    }
    return 0;
}
