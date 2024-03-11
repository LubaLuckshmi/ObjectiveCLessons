//
//  Passport.h
//  Seminar03
//
//  Created by Admin on 09.03.2024.
//

#import <Foundation/Foundation.h>


@interface Passport : NSObject

@property (nonatomic, retain) Person *person;
@property (nonatomic, assign) Person *assignablePerson;
@property (nonatomic, unsafe_unretained) Person *unsafePerson;
@property (nonatomic, weak) Person *weakPerson;
@end


