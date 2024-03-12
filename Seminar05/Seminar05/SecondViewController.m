//
//  SecondViewController.m
//  Seminar05
//
//  Created by Admin on 11.03.2024.
//

#import "SecondViewController.h"


@implementation SecondViewController

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self performLoadingWithPostRequest];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.loader = [Loader new];
}


- (void)performLoadingWithPostRequest {
    
    [self.loader performPostRequestFromUrl:@"https://postman-echo.com/post" argruments:@{@"key1": @"value1", @"key2": @"value2"} completion:^(NSDictionary *jsonData, NSError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            if (error) {
                NSLog(@"Error: %@", error);
                return;
            }
            NSLog(@"%@", jsonData);
        });
    }];
}

@end
