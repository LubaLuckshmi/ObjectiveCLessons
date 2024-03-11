//
//  RetainCointDemo.m
//  Seminar03
//
//  Created by Admin on 09.03.2024.
//

#import "RetainCountDemo.h"
#import "Person.h"
#import "Passport.h"

@implementation RetainCountDemo

- (void)execute {
    [self showRetainCount];
    [self accessToDeallocatedObject];
}

- (void)showRetainCount {
    NSLog(@"*** Showing retain count ***");
    Person *developer = [Person new];
    NSLog(@"[Person] Retain count after alloc-init: %lu", developer.retainCount);
    [developer retain];
    NSLog(@"[Person] Retain count after retain: %lu", developer.retainCount);
    [developer release];
    NSLog(@"[Person] Retain count after release: %lu", developer.retainCount);
    NSLog(@"\n");
}

- (void)accessToDeallocatedObject {
    NSLog(@"*** Accessing to deallocated object ");
    Person *developer = [Person new];
    [developer release];
    NSLog(@"[Person] Developer's name: %@", developer.name);
    NSLog(@"\n");
}
@end
