//
//  PLPatient.m
//  Delegates
//
//  Created by Pavel on 03/06/2016.
//  Copyright (c) 2016 Pavel Lakhno. All rights reserved.
//

#import "PLPatient.h"

@implementation PLPatient

- (void) howAreYou {

        switch (self.part) {
            case PLPartBodyHead:
                NSLog(@"patient %@ have got a pain in the head", self.name);
                break;
            case PLPartBodyHand:
                NSLog(@"patient %@ have got a pain in the hand", self.name);
                break;
            case PLPartBodyStomach:
                NSLog(@"patient %@ have got a pain in the stomach", self.name);
                break;
            case PLPartBodyLeg:
                NSLog(@"patient %@ have got a pain in the leg", self.name);
                break;
            default:
                NSLog(@"patient %@ is OK", self.name);
                break;
        }
    
    
        [self.delegate patientFeelsPain:self];

}
    
- (void) takePill {
    NSLog(@"patient %@ take a pill", self.name);
}
    
- (void) makeShot {
    NSLog(@"patients %@ maked shot", self.name);
}

- (void) makeGypsum {
    NSLog(@"patients %@ maked gypsum", self.name);
}


@end
