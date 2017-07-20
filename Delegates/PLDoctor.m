//
//  PLDoctor.m
//  Delegates
//
//  Created by Pavel on 03/06/2016.
//  Copyright (c) 2016 Pavel Lakhno. All rights reserved.
//

#import "PLDoctor.h"


@implementation PLDoctor

- (id)init
{
    self = [super init];
    if (self) {
        self.name = @"Doctor Good";
        self.arrayHead = [NSMutableArray array];
        self.arrayHand = [NSMutableArray array];
        self.arrayStomach = [NSMutableArray array];
        self.arrayLeg = [NSMutableArray array];
        self.dic = [[NSMutableDictionary alloc] init];
    }
    return self;
}

- (void) report{
    
}

# pragma mark - PLPatientDelegate 

- (void) patientFeelsBad:(PLPatient*)patient {
    
    NSLog(@"%@ heal %@", self.name, patient.name);
    
    if (patient.temperature > 36.6f && !patient.nausea) {
        NSLog(@"temperature is bad");
        [patient takePill];
    } else if (patient.temperature >36.6f && patient.nausea) {
        NSLog(@"temperature is bad and nause\n");
        [patient makeShot];
    } else {
        NSLog(@"%@ is healthy", patient.name);
    }
    
    NSLog(@"\n");
    
}


- (void) patientFeelsPain:(PLPatient *)patient{
    switch (patient.part) {
        case PLPartBodyHead:
            [patient takePill];
            [self.arrayHead addObject:patient.name];
            //[self.dic setObject:@"Head" forKey:patient.name];
            break;
        case PLPartBodyHand:
            [patient makeGypsum];
            [self.arrayHand addObject:patient.name];
            //[self.dic setObject:@"Hand" forKey:patient.name];
            break;
        case PLPartBodyStomach:
            [patient makeShot];
            [self.arrayStomach addObject:patient.name];
            //[self.dic setObject:@"Stomach" forKey:patient.name];
            break;
        case PLPartBodyLeg:
            [patient makeGypsum];
            [self.arrayLeg addObject:patient.name];
            //[self.dic setObject:@"Leg" forKey:patient.name];
            break;
        default:
            NSLog(@"patient %@ is nothing do", patient.name);
            break;
    }
    patient.doctorGrade =arc4random()% 5 + 1;
    
    self.dic = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                self.arrayHead, @"Head",
                self.arrayHand, @"Hand",
                self.arrayStomach, @"Stomach",
                self.arrayLeg, @"Leg", nil];
}


- (NSString*) partBody: (int) painOrgan {
    NSString* answer;
    switch (painOrgan) {
        case PLPartBodyHead:
            answer = @"Head";
            break;
        case PLPartBodyHand:
            answer = @"Hand";
            break;
        case PLPartBodyStomach:
            answer = @"Stomach";
            break;
        case PLPartBodyLeg:
            answer = @"Leg";
            break;
        default:
            break;
    }
    return answer;
}



@end
