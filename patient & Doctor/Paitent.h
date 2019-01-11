//
//  Paitent.h
//  patient & Doctor
//
//  Created by Yilei Huang on 2019-01-10.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Paitent : NSObject
//@property NSString*question;

//@property NSString *prescription; //adds to doctor array


//@property NSMutableArray *pastPrescription;
@property NSString *symptoms;
@property NSString *prescription;
@property NSString *paitentName;
@property int age;
@property int healthCard;

- (instancetype)initWithInfoName: (NSString*)name age:(int)age healthCard:(int)cardNum symptom:(NSString*)symptom;
@end

NS_ASSUME_NONNULL_END
