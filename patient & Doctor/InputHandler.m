//
//  InputHandler.m
//  patient & Doctor
//
//  Created by Yilei Huang on 2019-01-10.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler
-(NSString*)inputToString:(NSString*)input{
    NSLog(@"%@",input);
    char inputChar[255];
    fgets(inputChar, 255,stdin);
    NSString *myString = [NSString stringWithUTF8String:inputChar];
    return[myString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}
@end
