//
//  SecondViewController.m
//  Seminar06HW
//
//  Created by Admin on 13.03.2024.
//

#import "SecondViewController.h"
#import "Robot.h"

@interface SecondViewController ()

@end
@implementation SecondViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.xTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 100, 200, 30)];
    self.xTextField.placeholder = @"Enter X coordinate";
    [self.view addSubview:self.xTextField];
    
    self.yTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 150, 200, 30)];
    self.yTextField.placeholder = @"Enter Y coordinate";
    [self.view addSubview:self.yTextField];
    
    self.nameTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 200, 200, 30)];
    self.nameTextField.placeholder = @"Enter Name";
    [self.view addSubview:self.nameTextField];
    
    self.saveButton = [UIButton buttonWithType:UIButtonTypeSystem];
    self.saveButton.frame = CGRectMake(100, 250, 100, 30);
    [self.saveButton setTitle:@"Save" forState:UIControlStateNormal];
    [self.saveButton addTarget:self action:@selector(saveRobotButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.saveButton];
    
    self.infoTextView = [[UITextView alloc] initWithFrame:CGRectMake(50, 300, 200, 100)];
    [self.view addSubview:self.infoTextView];
}

- (void)saveRobotButtonTapped:(UIButton *)sender {
    NSString *xText = self.xTextField.text;
    NSString *yText = self.yTextField.text;
    NSString *name = self.nameTextField.text;
    
    if (xText.length == 0 || yText.length == 0) {
        NSLog(@"Coordinates are empty");
        return;
    }
    
    NSCharacterSet *nonDigits = [[NSCharacterSet decimalDigitCharacterSet] invertedSet];
    if ([xText rangeOfCharacterFromSet:nonDigits].location != NSNotFound || [yText rangeOfCharacterFromSet:nonDigits].location != NSNotFound) {
        NSLog(@"Coordinates are not valid numbers");
        return;
    }
    
    int x = [xText intValue];
    int y = [yText intValue];
    
    if (x == 0 || y == 0) {
        NSLog(@"Coordinates cannot be zero");
        return;
    }
    
    Robot *robot = [[Robot alloc] initWithX:x y:y name:name];
    
    NSData *robotData = [NSKeyedArchiver archivedDataWithRootObject:robot requiringSecureCoding:YES error:nil];
    
    if (robotData) {
        NSString *filePath = [self filePathForRobot:robot];
        [robotData writeToFile:filePath atomically:YES];
        
        // Read file content
        NSData *storedData = [NSData dataWithContentsOfFile:filePath];
        Robot *storedRobot = [NSKeyedUnarchiver unarchivedObjectOfClass:[Robot class] fromData:storedData error:nil];
        
        // Display content in UITextView
        self.infoTextView.text = [NSString stringWithFormat:@"Name: %@\nX: %d\nY: %d", storedRobot.name, storedRobot.x, storedRobot.y];
    }
}

- (NSString *)filePathForRobot:(Robot *)robot {
    NSString *documentsDirectory = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject;
    NSString *fileName = [NSString stringWithFormat:@"%@.dat", robot.name];
    return [documentsDirectory stringByAppendingPathComponent:fileName];
}
@end
