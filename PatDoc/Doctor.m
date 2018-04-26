//
//  Doctor.m
//  PatDoc
//
//  Created by Raman Singh on 2018-04-25.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"
@implementation Doctor
- (instancetype)init
{
    self = [super init];
    if (self) {
        _patientList = [NSMutableArray new];
        _presForThisPatient = [NSMutableArray new];
        _patPresDict = [NSMutableDictionary new];
    }
    return self;
}

-(void)addPatientToArray:(Patient *)patient {
    [self.patientList addObject:patient];
}
-(NSString *)prescriptionForPatient:(Patient *)patient {
    if ([self.patientList containsObject:patient]) {
        NSString *pres = @"Tylenol";
        
        [_patPresDict setObject:pres forKey:patient.name];
        
        return pres;
    } else {
        return nil;
    }
}

-(BOOL)checkIfPatientInList:(Patient *)patient {
    if ([self.patientList containsObject:patient]) {
        return true;
    } else {
        return false;
    }
}





@end
