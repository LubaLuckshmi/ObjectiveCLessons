//
//  Robot.m
//  Seminar04HW
//
//  Created by Admin on 11.03.2024.
//

#import "Robot.h"

@implementation Robot

- (instancetype)init {
    self = [super init];
    if (self) {
        self.x = 0;
        self.y = 0;
    }
    return self;
}

- (void)run:(NSString * (^)(void))directionBlock {
    NSString *direction = directionBlock();
    if ([direction isEqualToString:@"up"]) {
        self.y++;
    } else if ([direction isEqualToString:@"down"]) {
        self.y--;
    } else if ([direction isEqualToString:@"left"]) {
        self.x--;
    } else if ([direction isEqualToString:@"right"]) {
        self.x++;
    }
}

@end
