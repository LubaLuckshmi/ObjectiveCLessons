//
//  ViewController.m
//  Seminar05
//
//  Created by Admin on 11.03.2024.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self performLoadingWithGetRequest];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.loader = [Loader new];
}


- (void)performLoadingWithGetRequest {
    [self.loader performGetRequestFromUrl:@"https://postman-echo.com/get" argruments:@{@"foo1": @"bar1", @"foo2": @"bar2"} comletion:^(NSDictionary *jsonData , NSError *error) {
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
