//
//  Doctor.h
//  patient & Doctor
//
//  Created by Yilei Huang on 2019-01-10.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Paitent.h"

NS_ASSUME_NONNULL_BEGIN

@interface Doctor : NSObject

@property NSMutableArray <Paitent*>*patientInfo;
@property NSDictionary *treatment;
@property NSMutableArray *prescriptions;
-(void)addPaitentInfo:(Paitent *)info;



-(Boolean)ableVisit:(int)visit;
-(NSString*)requestMedicationForPatient:(NSString*)input;
@end

NS_ASSUME_NONNULL_END
