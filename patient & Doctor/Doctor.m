//
//  Doctor.m
//  patient & Doctor
//
//  Created by Yilei Huang on 2019-01-10.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

- (instancetype)init
{
    self = [super init];
    if (self) {
        _patientInfo = [NSMutableArray new];
        _prescriptions = [NSMutableArray new];
        _treatment =@{@"cold":@"drink more water!!",
                      @"dizzy":@"drink less water!",
                      @"hot":@"dont die!",
                      @"nothing":@"get out"
                      };
    }
    return self;
}


-(Boolean)ableVisit:(int)visit{
    return YES;
}

-(void)addPaitentInfo:(Paitent *)info{
    [_patientInfo addObject:info];
}
-(NSString*)requestMedicationForPatient:(NSString*)input{
    if([_treatment objectForKey:input]){
        NSLog(@"according to your sympton please do this: %@",[_treatment objectForKey:input]);
    }else{
        NSLog(@"Your sympton doesnt exist");
    }
    return [_treatment objectForKey:input];
}

- (NSString *)description
{
    NSMutableString * string = [NSMutableString stringWithString:@""];
    for (NSString*items in _prescriptions){
        [string appendString:items];
    }
    return string;
}
@end
