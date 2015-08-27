//
//  Patient.h
//  PatientAndDoctor
//
//  Created by Katherine Peterson on 2015-08-27.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Doctor;

@interface Patient : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic) NSString *gender;
@property (nonatomic) NSArray *preexistingMedicalConditions;
@property (nonatomic, assign) BOOL healthCard;

- (instancetype)initWithName:(NSString *)name Age:(NSInteger)age Gender:(NSString *)gender PreexistingMedicalConditions:(NSArray *)prexistingMedicalConditions InsuranceProvider:(BOOL)healthCard;

- (void) visitDoctor:(Doctor *)doctor;

//- (void) askDoctor:(Doctor *) doctor AQuestion:(NSString *) aQuestion;

@end
