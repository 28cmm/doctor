//
//  Paitent.m
//  patient & Doctor
//
//  Created by Yilei Huang on 2019-01-10.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import "Paitent.h"

@implementation Paitent



- (instancetype)initWithInfoName: (NSString*)name age:(int)age healthCard:(int)cardNum symptom:(NSString*)symptom
{
    self = [super init];
    if (self) {
        _paitentName = name;
        _age = age;
        _healthCard = cardNum;
        _symptoms = symptom;
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ %d", _paitentName, _age];
}
@end
