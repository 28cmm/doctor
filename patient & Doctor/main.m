//
//  main.m
//  patient & Doctor
//
//  Created by Yilei Huang on 2019-01-10.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Paitent.h"
#import "Doctor.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputHandler *inputHandler =[InputHandler new];
        Doctor *doctor =[Doctor new];
        NSString *input=[inputHandler inputToString:@"Do you have a health card.\n if yes,please enter your number, else enter no\n"];
        if(![input isEqual: @"no"]){
            NSString *name =[inputHandler inputToString:@"enter your name\n"];
            NSString *age = [inputHandler inputToString:@"enter your age\n"];
            NSString *symptom =[inputHandler inputToString:@"please enter your sympton \n"];
            Paitent *paitent = [[Paitent alloc]initWithInfoName:name age:age.intValue healthCard:input.intValue symptom:symptom];
            // patient visit doctor
            // get presecription for symptoms
            // doctor saves the prescription so it can be shared (task 4)
            paitent.prescription =[doctor requestMedicationForPatient: paitent.symptoms];
            [doctor addPaitentInfo:paitent];
            [doctor.prescriptions addObject:paitent.prescription];
            NSLog(@"%@", doctor.patientInfo[0]);
            NSLog(@"%@", doctor.description );
        }else{
            NSLog(@"goodBye");
        }
            

    }
    return 0;
}
