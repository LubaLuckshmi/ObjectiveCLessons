//
//  PropertyAtributesDemo.h
//  Seminar03
//
//  Created by Admin on 09.03.2024.
//

#import <Foundation/Foundation.h>



@interface PropertyAtributesDemo : NSObject

-(void) execute;
-(void) propertyWithRetain;
-(void) propertyWithCopy;
-(void) propertyWithAssign;
-(void) propertyWithWeak;
-(void) propertyWithUnsafe;
-(void) deallocatedPropertyWithCopy;
-(void) deallocatedPropertyWithAssign;
-(void) deallocatedPropertyWithWeak;
-(void) deallocatedPropertyWithUnsafe;
@end

