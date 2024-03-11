//
//  Robot.h
//  Seminar04HW
//
//  Created by Admin on 11.03.2024.
//

#import <Foundation/Foundation.h>


@interface Robot : NSObject

@property (nonatomic, assign) int x;
@property (nonatomic, assign) int y;

- (void)run:(NSString * (^)(void))directionBlock;

@end
