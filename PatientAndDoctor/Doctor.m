//
//  Doctor.m
//  PatientAndDoctor
//
//  Created by Katherine Peterson on 2015-08-27.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor

- (instancetype)initWithName:(NSString *)name Specialization:(NSString *)specialization
{
    self = [super init];
    if (self) {
        self.name = name;
        self.specialization = specialization;
    }
    return self;
}

- (void)acceptPatient:(Patient *)patient {
    NSLog(@"I can accept you as a patient, %@", patient.name);
}

//- (void)askPatient:(Patient *)patient AQuestion:(NSString *)aQuestion {
//    if ([aQuestion isEqualToString:@"name"]) {
//        NSLog(@"Hello, my name is %@",patient.name);
//    }
//    else if ([aQuestion isEqualToString:@"age"]) {
//        NSLog(@"I am %ld years old",patient.age);
//    }
//    else if ([aQuestion isEqualToString:@"gender"]) {
//        NSLog(@"I am a %@",patient.gender);
//    }
//    else if ([aQuestion isEqualToString:@"preexisting medical conditions"]) {
//        for (NSString *medical in patient.preexistingMedicalConditions) {
//            NSLog(@"I have %@ preexisting medical condition",medical);
//        }
//    }
//    else if ([aQuestion isEqualToString:@"insurance provider"]) {
//        NSLog(@"My insurance provider is %@",patient.insuranceProvider);
//    }
//    else {
//        NSLog(@"I don't know the answer to that");
//    }
//}

@end
