//
//  Patient.m
//  PatientAndDoctor
//
//  Created by Katherine Peterson on 2015-08-27.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (instancetype)initWithName:(NSString *)name Age:(int)age Gender:(NSString *)gender PreexistingMedicalConditions:(NSArray *)prexistingMedicalConditions InsuranceProvider:(NSString *)insuranceProvider
{
    self = [super init];
    if (self) {
        self.name = name;
        self.age = age;
        self.gender = gender;
        self.preexistingMedicalConditions = prexistingMedicalConditions;
        self.insuranceProvider = insuranceProvider;
    }
    return self;
}

@end
