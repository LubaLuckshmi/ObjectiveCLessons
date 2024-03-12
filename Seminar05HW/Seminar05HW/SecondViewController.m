//
//  SecondViewController.m
//  Seminar05HW
//
//  Created by Admin on 12.03.2024.
//

#import "SecondViewController.h"


@implementation SecondViewController

//- (void)viewDidAppear:(BOOL)animated {
//    [super viewDidAppear:animated];
//    [self performLoadingWithPostRequest];
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.loader = [Loader new];
    self.textField1 = [[UITextField alloc] initWithFrame:CGRectMake(20, 100, self.view.frame.size.width - 40, 40)];
        self.textField1.placeholder = @"Key1";
        self.textField1.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview:self.textField1];

        self.textField2 = [[UITextField alloc] initWithFrame:CGRectMake(20, 160, self.view.frame.size.width - 40, 40)];
        self.textField2.placeholder = @"Key2";
        self.textField2.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview:self.textField2];

        self.postButton = [UIButton buttonWithType:UIButtonTypeCustom];
        self.postButton.frame = CGRectMake(20, 220, self.view.frame.size.width - 40, 40);
        [self.postButton setTitle:@"Send POST Request" forState:UIControlStateNormal];
        [self.postButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [self.postButton addTarget:self action:@selector(postButtonTapped) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:self.postButton];
    
}
- (void)postButtonTapped {
    NSString *key1 = self.textField1.text;
    NSString *key2 = self.textField2.text;
    
    NSDictionary *arguments = @{@"key1": key1, @"key2": key2};
    
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
