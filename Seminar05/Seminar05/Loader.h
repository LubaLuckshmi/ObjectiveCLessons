//
//  Loader.h
//  Seminar05
//
//  Created by Admin on 11.03.2024.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Loader : NSObject

@property(nonatomic)NSURLSession *session;

-(void) performGetRequestFromUrl: (NSString *)stringUrl argruments:(NSDictionary *) arguments comletion:(void (^)(NSDictionary *, NSError *))completion;
-(void) performPostRequestFromUrl: (NSString *)stringUrl argruments:(NSDictionary *) arguments comletion:(void (^)(NSDictionary *, NSError *))completion;
-(NSDictionary *)parseJsonData:(NSData *)data error:(NSError **)error;
-(NSData *)dataWithJson:(NSDictionary *)jsonDict error:(NSError **)error;

@end

NS_ASSUME_NONNULL_END
