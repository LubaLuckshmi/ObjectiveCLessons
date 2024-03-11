//
//  PropertyAtributesDemo.m
//  Seminar03
//
//  Created by Admin on 09.03.2024.
//

#import "PropertyAtributesDemo.h"
#import "Person.h"
#import "Passport.h"

@implementation PropertyAtributesDemo

- (void)execute {
    [self propertyWithCopy];
    [self propertyWithWeak];
    [self propertyWithAssign];
    [self propertyWithRetain];
    [self propertyWithUnsafe];
    [self deallocatedPropertyWithCopy];
    [self deallocatedPropertyWithWeak];
    [self deallocatedPropertyWithAssign];
    [self deallocatedPropertyWithUnsafe];
}

- (void)propertyWithAssign {
}

- (void)propertyWithCopy {
}

- (void)propertyWithRetain {
    NSLog(@"*** Showing property with retain atribute ***");
    
    Person *person = [Person new];
    Passport *passport = [Passport new];
    
    NSLog(@"[Passport] %@ has been created with retain count: %lu", passport, passport.retainCount);
    person.passport = passport;
    NSLog(@"[Passport] %@ has been created with retain count after property assignment: %lu", passport, passport.retainCount);
    [person release];
    [passport release];
    
    NSLog(@"\n");
}

- (void)propertyWithUnsafe {
}

- (void)propertyWithWeak {
}
- (void)deallocatedPropertyWithAssign {
}

- (void)deallocatedPropertyWithCopy {
    NSLog(@"*** Accesing deallocated property with copy ***");
    
    Person *person = [[Person alloc] initWithName:@"Tom"];
    Passport *passport = [Passport new];
    person.passport = passport;
    [passport release];
    NSLog(@"[Person] %@ has been created with retain count: %lu", person, passport.retainCount);
    
    NSLog(@"[Person] %@ has been created with retain count: %lu", person, passport.retainCount);
    
    [person release];
    
    NSLog(@"\n");
}

- (void)deallocatedPropertyWithUnsafe {
}

- (void)deallocatedPropertyWithWeak {
}


@end
