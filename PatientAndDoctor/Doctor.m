//
//  Doctor.m
//  PatientAndDoctor
//
//  Created by Katherine Peterson on 2015-08-27.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "Doctor.h"

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

@end
