//
//  main.m
//  PatientAndDoctor
//
//  Created by Katherine Peterson on 2015-08-27.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Patient *newPatient = [[Patient alloc] initWithName:@"Katie" Age:31 Gender:@"Female" PreexistingMedicalConditions:@[@"warts", @"bed sores"] InsuranceProvider:YES];
        Doctor *newDoctor = [[Doctor alloc] initWithName:@"Sigmund Freud" Specialization:@"Psychiatry"];
        
        [newPatient visitDoctor:newDoctor];

    }
    return 0;
}
