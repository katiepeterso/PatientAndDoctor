//
//  Doctor.m
//  PatientAndDoctor
//
//  Created by Katherine Peterson on 2015-08-27.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@interface Doctor()
@property (nonatomic) NSMutableSet *patientList;
@end

@implementation Doctor

- (instancetype)initWithName:(NSString *)name Specialization:(NSString *)specialization
{
    self = [super init];
    if (self) {
        self.name = name;
        self.specialization = specialization;
        self.patientList = [NSMutableSet new];
    }
    return self;
}

- (void)acceptPatient:(Patient *)patient {
    
    if (patient.healthCard) {
        NSLog(@"I can accept you as a patient, %@", patient.name);
        [self.patientList addObject:patient];
    }
    
    else {
        NSLog(@"I'm sorry, I can't accept patients without health cards");
    }
}

- (void) fillPerscription:(Patient *)patient {
    
    if ([self.patientList containsObject:patient]) {
        NSLog(@"Okay, I'll get you some meds");
    }
    
    else {
        NSLog(@"Sorry, you're not my patient");
    }
}

@end
