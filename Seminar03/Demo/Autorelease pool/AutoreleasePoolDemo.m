//
//  AutoreleasePoolDemo.m
//  Seminar03
//
//  Created by Admin on 09.03.2024.
//

#import "AutoreleasePoolDemo.h"
#import "Person.h"
#import "Passport.h"

@implementation AutoreleasePoolDemo
- (void)execute {
    [self autoreleaseOwnedString];
    [self autoreleaseLiteralString];
    [self autoreleaseNonOwnedString];
    [self autoreleaseStringFromCustomMethod];
    [self getMessage];
    [self manualAutoreleaseString];
}

- (void)autoreleaseLiteralString {
    NSLog(@"*** Autorelease literal NSString ***");
    NSString *literalString;
    @autoreleasepool {
        literalString = @"Hello World!";
        NSLog(@"[Literal NSString] Retain count indide autorelease pool scope: %lu", literalString.retainCount);
    }
    NSLog(@"[Literal NSString] Retain count outside autorelease pool scope: %lu", literalString.retainCount);
    NSLog(@"/n");
}

- (void)autoreleaseNonOwnedString {
    NSLog(@"*** Autorelease non-owned NSString ***");
    NSString *nonOwnedString;
    @autoreleasepool {
        nonOwnedString= [NSString initWithUTF8String: "Hello, World!"];
        [nonOwnedString retain];
        NSLog(@"[Non-owned NSString] Retain count indide autorelease pool scope: %lu", nonOwnedString.retainCount);
    }
    NSLog(@"Non-owned NSString] Retain count outside autorelease pool scope: %lu", nonOwnedString.retainCount);
    [nonOwnedString release];
    NSLog(@"/n");
   
}

- (void)autoreleaseOwnedString { 
    NSLog(@"*** Autorelease owned NSString ***");
    NSString *ownedString;
    @autoreleasepool {
        ownedString = [[NSString alloc] initWithUTF8String: "Hello, World!"];
        NSLog(@"[Owned NSString] Retain count indide autorelease pool scope: %lu", ownedString.retainCount);
    }
    NSLog(@"[Owned NSString] Retain count outside autorelease pool scope: %lu", ownedString.retainCount);
    [ownedString release];
    NSLog(@"/n");
}

- (void)autoreleaseStringFromCustomMethod {
    NSLog(@"*** Autorelease from custom method NSString ***");
    NSString *string;
    @autoreleasepool {
        string = [self getMessage];
        NSLog(@"[NSString] Retain count indide autorelease pool scope: %lu", string.retainCount);
    }
    NSLog(@"[NSString] Retain count outside autorelease pool scope: %lu", string.retainCount);
    [string release];
    NSLog(@"/n");
}



- (NSString *)getMessage {
    NSString *message = [[NSString alloc] initWithUTF8String:"Hello, World!"];
    return [message autorelease];
}

- (void)manualAutoreleaseString {
    
    NSLog(@"*** Manual autorelease NSString ***");
    NSString *string;
    @autoreleasepool {
        string = [[NSString alloc] initWithUTF8String: "Hello, World!"];
        [string retain];
        [string retain];
        NSLog(@"[Literal NSString] Retain count indide autorelease pool scope: %lu", string.retainCount);
    }
    NSLog(@"[Literal NSString] Retain count outside autorelease pool scope: %lu", string.retainCount);
    [string release];
    NSLog(@"/n");
}

@end
