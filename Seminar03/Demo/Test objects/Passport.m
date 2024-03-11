//
//  Passport.m
//  Seminar03
//
//  Created by Admin on 09.03.2024.
//

#import "Passport.h"
#import "Person.h"


@implementation Passport
- (void) dealloc {
    NSLog(@"[Passport] %@ is begining deallocating", self);
    [_person release];
    [super dealloc];
}
@end
