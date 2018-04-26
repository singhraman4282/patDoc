//
//  Patient.m
//  PatDoc
//
//  Created by Raman Singh on 2018-04-25.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import "Patient.h"


@implementation Patient
- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}



-(void)visitsDoctor:(Doctor *)doctor {
    if (_hasHealthCard) {
        doctor.canAcceptPatient = true;
        [doctor addPatientToArray:self];
    }
}//visit

-(void)requestMedication:(Doctor *)doctor {
    if ([doctor.patientList containsObject:self]) {
        
    }
}//




@end
