//
//  PLDoctorBad.m
//  Delegates
//
//  Created by Pavel on 20/07/2017.
//  Copyright (c) 2017 Pavel Lakhno. All rights reserved.
//

#import "PLSecondDoctor.h"

@implementation PLSecondDoctor

- (id)init
{
    self = [super init];
    if (self) {
        self.name = @"Doctor Bad";
    }
    return self;
}

- (void) patientFeelsBad:(PLPatient*)patient {
    
     NSLog(@"%@ heal %@", self.name, patient.name);
    
    if (patient.temperature <= 36.6f && !patient.nausea) {
        NSLog(@"patient %@ is healthy\n", patient.name);
        [patient takePill];
        [patient makeShot];
        NSLog(@"%@ died %@", self.name, patient.name);
    } else if (patient.temperature >36.6f && patient.nausea) {
        NSLog(@"temperature is bad and nause\n");
        NSLog(@"%@ said %@ that he/she is healthy",self.name, patient.name);
    } else {
        NSLog(@"%@ insulted %@",self.name, patient.name);
    }
    
    NSLog(@"\n");
}


- (void) patientFeelsPain:(PLPatient *)patient{
    NSLog(@"Patient %@ take doctor %@", patient.name, self.name);
}

@end
