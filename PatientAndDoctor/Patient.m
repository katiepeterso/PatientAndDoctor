//
//  Patient.m
//  PatientAndDoctor
//
//  Created by Katherine Peterson on 2015-08-27.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

- (instancetype)initWithName:(NSString *)name Age:(NSInteger)age Gender:(NSString *)gender PreexistingMedicalConditions:(NSArray *)prexistingMedicalConditions InsuranceProvider:(BOOL)healthCard
{
    self = [super init];
    if (self) {
        self.name = name;
        self.age = age;
        self.gender = gender;
        self.preexistingMedicalConditions = prexistingMedicalConditions;
        self.healthCard = healthCard;
    }
    return self;
}

- (void) visitDoctor:(Doctor *)doctor {
    
    if (self.healthCard) {
        [doctor acceptPatient:self];
    }
    
    else {
        NSLog(@"I'm sorry, I can't accept patients without health cards");
    }
}

//- (void) askDoctor:(Doctor *) doctor AQuestion:(NSString *) aQuestion {
//    if ([aQuestion isEqualToString:@"name"]) {
//        NSLog(@"Hello, my name is Dr. %@",doctor.name);
//    }
//    else if ([aQuestion isEqualToString:@"specialization"]) {
//        NSLog(@"My sepcialization is %@",doctor.specialization);
//    }
//    else {
//        NSLog(@"I don't know the answer to that");
//    }
//}

@end
