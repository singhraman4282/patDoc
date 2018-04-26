//
//  Patient.h
//  PatDoc
//
//  Created by Raman Singh on 2018-04-25.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"


@interface Patient : NSObject
@property (nonatomic) NSString *name;
@property (assign) int age;
@property (nonatomic) BOOL hasHealthCard;
@property (nonatomic) NSString *symptoms;


-(void)requestMedication:(Doctor *)doctor;
-(void)visitsDoctor:(Doctor *)doctor;
@end
