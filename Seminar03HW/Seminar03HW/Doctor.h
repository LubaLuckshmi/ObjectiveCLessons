//
//  Doctor.h
//  Seminar03HW
//
//  Created by Admin on 11.03.2024.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@interface Doctor : NSObject

@property (nonatomic, weak) id<PatientDelegate> patientDelegate;

- (void) prescribeMedicationToPatient;

@end
