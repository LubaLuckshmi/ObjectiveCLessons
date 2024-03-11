//
//  AppDelegate.m
//  Seminar03HW
//
//  Created by Admin on 11.03.2024.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    Doctor *doctor = [[Doctor alloc] init];
    Patient *patient = [[Patient alloc] init];
    
    doctor.patientDelegate = patient;
    [doctor prescribeMedicationToPatient];
    
    return YES;
}

@end
