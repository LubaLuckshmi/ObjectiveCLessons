//
//  Doctor.m
//  Seminar03HW
//
//  Created by Admin on 11.03.2024.
//

#import "Doctor.h"

@implementation Doctor

- (void)prescribeMedicationToPatient {
    [self.patientDelegate patientShouldTakeMedication];
}

@end
