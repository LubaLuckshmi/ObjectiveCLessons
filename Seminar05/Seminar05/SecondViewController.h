//
//  SecondViewController.h
//  Seminar05
//
//  Created by Admin on 11.03.2024.
//


#import <UIKit/UIKit.h>
#import "Loader.h"

@interface SecondViewController : UIViewController
@property (nonatomic, weak) IBOutlet UITextField *textField1;
@property (nonatomic, weak) IBOutlet UITextField *textField2;
@property(nonatomic, strong) Loader *loader;
-(void) performLoadingWithPostRequest;
@end

