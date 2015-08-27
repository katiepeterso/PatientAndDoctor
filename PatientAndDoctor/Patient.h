//
//  Patient.h
//  PatientAndDoctor
//
//  Created by Katherine Peterson on 2015-08-27.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Patient : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) int age;
@property (nonatomic) NSString *gender;
@property (nonatomic) NSArray *existingMedicalConditions;
@property (nonatomic) NSString *insuranceProvider;

@end