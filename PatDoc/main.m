//
//  main.m
//  PatDoc
//
//  Created by Raman Singh on 2018-04-25.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Patient *thisPatient = [Patient new];
        Doctor *thisDoctor = [Doctor new];
        
        
        
        thisPatient.name = @"John";
        thisPatient.age = 30;
        thisPatient.symptoms = @"broken eye";
        
        thisDoctor.name = @"Mark";
        thisDoctor.spec = @"phd";
        
        thisPatient.hasHealthCard = true;
        [thisPatient visitsDoctor:thisDoctor];
        
        NSLog(@"total patients %d", thisDoctor.patientList.count);
        Patient *anotherPatient = [thisDoctor.patientList objectAtIndex:0];
        NSLog(@"patients name from array is %@", anotherPatient.name);
        
        if ([thisDoctor checkIfPatientInList:thisPatient]) {
            NSLog(@"patient exists");
            
        }
        
        
        
    }
    return 0;
}
