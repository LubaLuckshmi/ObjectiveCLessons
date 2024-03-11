//
//  ViewController.h
//  Seminar05
//
//  Created by Admin on 11.03.2024.
//

#import <UIKit/UIKit.h>
#import "Loader.h"

@interface ViewController : UIViewController
@property(nonatomic) Loader *loader;
-(void) performLoadingWithGetRequest;

@end

