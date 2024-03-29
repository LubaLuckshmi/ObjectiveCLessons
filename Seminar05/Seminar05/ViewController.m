//
//  ViewController.m
//  Seminar05
//
//  Created by Admin on 11.03.2024.
//

#import "ViewController.h"
#import "SecondViewController.h"

@implementation ViewController
//
//- (void)viewDidAppear:(BOOL)animated {
//    [super viewDidAppear:animated];
//    [self performLoadingWithGetRequest];
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.loader = [Loader new];
    self.view.backgroundColor = [UIColor blueColor];
    
    self.textView = [[UITextView  alloc] init];
    self.textView.translatesAutoresizingMaskIntoConstraints = NO;
    self.textView.backgroundColor = [UIColor whiteColor];
    
    [self.navigationController.navigationBar setHidden:NO];
    
    UIBarButtonItem *nextButton = [[UIBarButtonItem alloc] initWithTitle:@"Next" style:UIBarButtonItemStylePlain target:self action:@selector(nextButtonTapped)];
    self.navigationItem.rightBarButtonItem = nextButton;
    
    [self setupView];
    [self setupConstraints];
    [self performLoadingWithGetRequest];
}


- (void)setupView {
    [self.view addSubview:self.textView];
}

- (void)setupConstraints {
    [NSLayoutConstraint activateConstraints:@[
        [self.textView.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
        [self.textView.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor],
        [self.textView.widthAnchor constraintEqualToAnchor:self.view.widthAnchor multiplier:0.5],
        [self.textView.heightAnchor constraintEqualToAnchor:self.view.heightAnchor multiplier:0.5],
    ]];
}
- (void)performLoadingWithGetRequest {
//    NSString *text = self.textField.text;
    
    [self.loader performGetRequestFromUrl:@"https://postman-echo.com/get" argruments:@{@"foo1": @"bar1", @"foo2": @"bar2"} completion:^(NSDictionary *jsonData , NSError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            if (error) {
                NSLog(@"Error: %@", error);
                return;
            }
            NSString *textData =[jsonData description];
            self.textView.text = textData;
            NSLog(@"%@", jsonData);
        });
    }];
}

- (void)nextButtonTapped {
    SecondViewController *secondVC = [SecondViewController new];
    [self.navigationController pushViewController:secondVC animated:YES];
}


@end
