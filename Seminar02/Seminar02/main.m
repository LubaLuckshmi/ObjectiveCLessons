//
//  main.m
//  Seminar02
//
//  Created by Admin on 06.03.2024.
//

#import <Foundation/Foundation.h>
#import "Photographer.h"
#import "Trainer.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Photographer* photographer = [[Photographer alloc] initWithTypeOfCamera:Canon startNumberOfPhoto:10];
        NSLog(@"%f", [photographer checkMoney]);
        Trainer* trainer = [[Trainer alloc] initWithTypeOfCamera:Nikon startNumberOfPhoto:5];
        NSLog(@"%f", [trainer checkMoney]);
        
        
    }
    return 0;
}
