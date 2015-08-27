//
//  Doctor.h
//  PatientAndDoctor
//
//  Created by Katherine Peterson on 2015-08-27.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Patient;
@interface Doctor : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *specialization;
@property (nonatomic) NSDictionary *pharmDictionary;


- (instancetype)initWithName:(NSString *)name Specialization:(NSString *)specialization;

- (void) acceptPatient:(Patient *)patient;

- (NSMutableArray *) writePerscription:(Patient *)patient;

@end
