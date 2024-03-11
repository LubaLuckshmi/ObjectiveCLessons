//
//  AutoreleasePoolDemo.h
//  Seminar03
//
//  Created by Admin on 09.03.2024.
//

#import <Foundation/Foundation.h>


@interface AutoreleasePoolDemo : NSObject

-(void) execute;
-(void) autoreleaseOwnedString;
-(void) manualAutoreleaseString;
-(void) autoreleaseNonOwnedString;
-(void) autoreleaseStringFromCustomMethod;
-(void) autoreleaseLiteralString;
-(NSString *) getMessage;

@end
