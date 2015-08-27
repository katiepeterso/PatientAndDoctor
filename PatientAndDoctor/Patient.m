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

- (instancetype)initWithName:(NSString *)name Age:(NSInteger)age Symptoms:(NSArray *)symptoms InsuranceProvider:(BOOL)healthCard
{
    self = [super init];
    if (self) {
        self.name = name;
        self.age = age;
        self.symptoms = symptoms;
        self.healthCard = healthCard;
    }
    return self;
}

- (void) visitDoctor:(Doctor *)doctor {
    
    [doctor acceptPatient:self];

}

- (void) requestMedication:(Doctor *)doctor {
    
    [doctor writePerscription:self];
}


@end
