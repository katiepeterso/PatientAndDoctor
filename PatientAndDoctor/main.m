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
#import "PatientRecords.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        PatientRecords *masterRecord = [PatientRecords new];
        
        Patient *newPatient = [[Patient alloc] initWithName:@"Katie" Age:31 Symptoms:@[@"warts", @"bed sores"] InsuranceProvider:YES];
        Doctor *newDoctor = [[Doctor alloc] initWithName:@"Sigmund Freud" Specialization:@"Psychiatry" PerscriptionDictionary:masterRecord.patientPerscriptions];
        
        newDoctor.pharmDictionary = @{@"warts":@"Salicylic acid", @"bed sores":@"polysporin"};
        
        [newPatient visitDoctor:newDoctor];
        
        [newPatient requestMedication:newDoctor];

    }
    return 0;
}
