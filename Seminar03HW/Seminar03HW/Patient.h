//
//  Patient.h
//  Seminar03HW
//
//  Created by Admin on 11.03.2024.
//

#import <Foundation/Foundation.h>

@protocol PatientDelegate <NSObject>

- (void)patientShouldTakeMedication;

@end

@interface Patient : NSObject <PatientDelegate>
@end
