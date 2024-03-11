//
//  Person.h
//  Seminar03
//
//  Created by Admin on 09.03.2024.
//

#import <Foundation/Foundation.h>



@interface Person : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic, retain) Passport *passport;

+ (Person *)createPersonWithName: (NSString *)name;
- (instancetype)initWithName: (NSString *)name;

@end



