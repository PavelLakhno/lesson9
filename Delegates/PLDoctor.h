//
//  PLDoctor.h
//  Delegates
//
//  Created by Pavel on 03/06/2016.
//  Copyright (c) 2016 Pavel Lakhno. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PLPatient.h"

@interface PLDoctor : NSObject <PLPatientDelegate>

@property (strong, nonatomic) NSString *name;

@property (strong, nonatomic) NSMutableDictionary* dic;
@property (strong, nonatomic) NSMutableArray* arrayHead;
@property (strong, nonatomic) NSMutableArray* arrayHand;
@property (strong, nonatomic) NSMutableArray* arrayStomach;
@property (strong, nonatomic) NSMutableArray* arrayLeg;

- (id)     init;
- (void) report;
- (NSString*) partBody: (int) painOrgan;

@end
