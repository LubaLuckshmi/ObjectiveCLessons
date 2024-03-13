//
//  Robot.m
//  Seminar06HW
//
//  Created by Admin on 13.03.2024.
//
#import "Robot.h"

@implementation Robot

- (instancetype)initWithX:(int)x y:(int)y name:(NSString *)name {
    self = [super init];
    if (self) {
        self.x = x;
        self.y = y;
        self.name = name;
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
    [coder encodeInt:self.x forKey:@"x"];
    [coder encodeInt:self.y forKey:@"y"];
    [coder encodeObject:self.name forKey:@"name"];
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super init];
    if (self) {
        self.x = [coder decodeIntForKey:@"x"];
        self.y = [coder decodeIntForKey:@"y"];
        self.name = [coder decodeObjectOfClass:[NSString class] forKey:@"name"];
    }
    return self;
}

+ (BOOL)supportsSecureCoding {
    return YES;
}

@end

