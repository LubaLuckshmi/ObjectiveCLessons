//
//  SecondViewController.h
//  Seminar05HW
//
//  Created by Admin on 12.03.2024.
//

#import <UIKit/UIKit.h>
#import "Loader.h"

@interface SecondViewController : UIViewController
@property (nonatomic) UITextField *textField1;
@property (nonatomic) UITextField *textField2;
@property (nonatomic) UIButton *postButton;
@property(nonatomic) Loader *loader;
- (void)postButtonTapped;
@end

