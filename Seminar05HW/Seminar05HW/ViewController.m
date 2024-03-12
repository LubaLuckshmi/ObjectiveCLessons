//
//  ViewController.m
//  Seminar05HW
//
//  Created by Admin on 12.03.2024.
//

#import "ViewController.h"
#import "SecondViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.loader = [Loader new];
    self.view.backgroundColor = [UIColor blueColor];
    
    self.textView = [[UITextView alloc] initWithFrame:self.view.bounds];
    self.textView.translatesAutoresizingMaskIntoConstraints = NO;
    self.textView.backgroundColor = [UIColor whiteColor];
    
    UIButton *nextButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.nextButton.translatesAutoresizingMaskIntoConstraints = NO;
    [nextButton setTitle:@"Next" forState:UIControlStateNormal];
    [nextButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [nextButton addTarget:self action:@selector(nextButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    
  
    self.nextButton = nextButton;
    
    [self setupView];
    [self setupConstraints];
    [self performLoadingWithGetRequest];
}


- (void)setupView {
    [self.view addSubview:self.textView];
    [self.view addSubview:self.nextButton];
}

- (void)setupConstraints {
    [NSLayoutConstraint activateConstraints:@[
        [self.textView.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
        [self.textView.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor],
        [self.textView.widthAnchor constraintEqualToAnchor:self.view.widthAnchor multiplier:0.5],
        [self.textView.heightAnchor constraintEqualToAnchor:self.view.heightAnchor multiplier:0.5],
        
        [self.nextButton.topAnchor constraintEqualToAnchor:self.textView.bottomAnchor constant:20],
//        [self.nextButton.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
        [self.nextButton.widthAnchor constraintEqualToConstant:100],
//        [self.nextButton.heightAnchor constraintEqualToConstant:50]
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
