//
//  ViewController.h
//  Seminar05HW
//
//  Created by Admin on 12.03.2024.
//

#import <UIKit/UIKit.h>
#import "Loader.h"

@interface ViewController : UIViewController
@property(nonatomic) Loader *loader;
@property (nonatomic) UITextView *textView;
@property (nonatomic) UIButton *nextButton;
-(void) performLoadingWithGetRequest;
-(void)nextButtonTapped;
-(void)setupConstraints;
-(void)setupView;
@end


