//
//  PLPatient.h
//  Delegates
//
//  Created by Pavel on 03/06/2016.
//  Copyright (c) 2016 Pavel Lakhno. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PLPatientDelegate;

typedef enum{
    PLPartBodyHead,
    PLPartBodyHand,
    PLPartBodyLeg,
    PLPartBodyStomach    
}PLPartBody;

@interface PLPatient : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) CGFloat temperature;
@property (assign, nonatomic) PLPartBody part;
@property (  weak, nonatomic) id <PLPatientDelegate> delegate;
@property (strong, nonatomic) NSMutableDictionary* dictionary;
@property (assign, nonatomic) CGFloat pressure;
@property (assign, nonatomic) BOOL nausea;
@property (assign, nonatomic) NSInteger doctorGrade;


- (void) howAreYou;
- (void) takePill;
- (void) makeShot;
- (void) makeGypsum;

@end


@protocol PLPatientDelegate <NSObject>


- (void) patientFeelsBad:(PLPatient*)patient;

- (void) patientFeelsPain:(PLPatient*) patient;

@end


