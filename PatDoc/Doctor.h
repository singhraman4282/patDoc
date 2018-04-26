//
//  Doctor.h
//  PatDoc
//
//  Created by Raman Singh on 2018-04-25.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Patient;

@interface Doctor : NSObject
@property (nonatomic) NSString *name;
@property (nonatomic) NSString *spec;
@property (nonatomic) BOOL canAcceptPatient;
@property (nonatomic) NSMutableArray *patientList;
@property (nonatomic) BOOL patientExists;
@property (nonatomic) NSMutableArray *presForThisPatient;
@property (nonatomic) NSMutableDictionary *patPresDict;

-(void)addPatientToArray:(Patient *)patient;
-(NSString *)prescriptionForPatient:(Patient *)patient;
-(BOOL)checkIfPatientInList:(Patient *)patient;
@end
