//
//  Robot.h
//  Seminar06HW
//
//  Created by Admin on 13.03.2024.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Robot : NSObject <NSSecureCoding>
@property (nonatomic, assign) int x;
@property (nonatomic, assign) int y;
@property (nonatomic, strong) NSString *name;

- (instancetype)initWithX:(int)x y:(int)y name:(NSString *)name;
@end

NS_ASSUME_NONNULL_END
