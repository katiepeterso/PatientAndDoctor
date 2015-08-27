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
@property (nonatomic) NSArray *symptoms;
@property (nonatomic, assign) BOOL healthCard;

- (instancetype)initWithName:(NSString *)name Age:(NSInteger)age Symptoms:(NSArray *)symptoms InsuranceProvider:(BOOL)healthCard;

- (void) visitDoctor:(Doctor *)doctor;

- (void) requestMedication:(Doctor *)doctor;

//- (void) askDoctor:(Doctor *) doctor AQuestion:(NSString *) aQuestion;

@end
