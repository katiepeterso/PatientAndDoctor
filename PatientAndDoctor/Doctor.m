//
//  Doctor.m
//  PatientAndDoctor
//
//  Created by Katherine Peterson on 2015-08-27.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"
#import "PatientRecords.h"

@interface Doctor()
@property (nonatomic) NSMutableSet *patientList;

- (void)updatePerscriptionList:(NSArray *)perscriptions For:(NSString *)patientName;


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

- (NSMutableArray *) writePerscription:(Patient *)patient{
    NSMutableArray *prescriptionList = [NSMutableArray new];
    
    if ([self.patientList containsObject:patient]) {
        for (NSString *symptoms in patient.symptoms) {
            NSString *perscription = [self.pharmDictionary objectForKey:symptoms];
            [prescriptionList addObject:perscription];
            NSLog(@"Here is your perscription for %@", perscription);
        }
        
    }
    
    else {
        NSLog(@"Sorry, you're not my patient");
    }
    
    return prescriptionList;
}

- (void)updatePerscriptionList:(NSArray *)perscriptions For:(NSString *)patientName {
    [
    
}

@end
