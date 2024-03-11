//
//  Demo.m
//  Seminar03
//
//  Created by Admin on 09.03.2024.
//

#import "Demo.h"
#import "RetainCountDemo.h"
#import "RetainCircleDemo.h"
#import "PropertyAtributesDemo.h"
#import "AutoreleasePoolDemo.h"

@implementation Demo

- (void)execute {
    RetainCountDemo *retainCountDemo = [[RetainCountDemo alloc] init];
    PropertyAtributesDemo *propertyDemo = [[PropertyAtributesDemo alloc] init];
    RetainCycleDemo *retainCycleDemo = [[RetainCycleDEmo alloc] init];
    
    NSArray *demoArray = [[NSArray alloc] initWithObjects:retainCountDemo, propertyDemo, retainCycleDemo, nil];
    
    for (NSObject<DemoProtocol> *demo ib demoArray) {
        NSLog(@"%@", NSStringFromClass([demo class]));
        NSLog(@"\n");
        [demo execute];
    }
    [demoArray release];
    [retainCountDemo release];
    [propertyDemo release];
    [retainCycleDemo release];
    [AutoreleasePoolDemo release];
}

@end
