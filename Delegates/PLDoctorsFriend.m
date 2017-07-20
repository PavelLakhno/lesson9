//
//  PLDoctorsFriend.m
//  Delegates
//
//  Created by Pavel on 04/06/2016.
//  Copyright (c) 2016 Pavel Lakhno. All rights reserved.
//

#import "PLDoctorsFriend.h"

@implementation PLDoctorsFriend


- (void) patientFeelsBad:(PLPatient*)patient{
    
    NSLog(@"Patient %@ feels bad", patient.name);
    
    if (patient.vomit && patient.pressure >=150.f){
        NSLog(@"patient %@ is pregnant",patient.name);
        [patient takePill];
        [patient makeShot];
    }
    else if (patient.pressure < 90.f ){
        [patient makeShot];
    }
    else {
        NSLog(@"Patient %@ is OK", patient.name);
    }
}

- (void) patient:(PLPatient *)patient hasQuestion: (NSString*) question {
    NSLog(@"Patient %@ ask you: %@", patient.name, question);
}

- (void) patientFeelsEvenWorse:(PLPatient *)patient{
    NSLog(@"Patient %@ is in the hospital", patient.name);
}

@end
