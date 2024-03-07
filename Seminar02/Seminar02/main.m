//
//  main.m
//  Seminar02
//
//  Created by Admin on 06.03.2024.
//

#import <Foundation/Foundation.h>
#import "Photographer.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Photographer* photographer = [[Photographer alloc] initWithTypeOfCamera:Canon];
        NSLog(@"%f", [photographer getWage]);
        
    }
    return 0;
}
