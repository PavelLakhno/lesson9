//
//  PLDoctorBad.h
//  Delegates
//
//  Created by Pavel on 20/07/2017.
//  Copyright (c) 2017 Pavel Lakhno. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PLPatient.h"

@interface PLSecondDoctor : NSObject <PLPatientDelegate>

@property (strong, nonatomic) NSString *name;

@end
