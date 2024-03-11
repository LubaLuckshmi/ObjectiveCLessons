//
//  Person.m
//  Seminar03
//
//  Created by Admin on 09.03.2024.
//

#import "Person.h"
#import "Passport.h"

@implementation Person 
+ (Person *)createPersonWithName:(NSString *)name {
    return [[[Person alloc] initWithName:name] autorelease];
}

- ( instancetype)initWithName:( NSString *)name {
    self = [super init];
    if (self) {
        _name = [name retain];
    }
    return self;
}
- (void) dealloc {
    NSLog(@"[Person] %@ is begining deallocating", self);
    [_passport release];
    [_name release];
    [super dealloc];
}

@end
