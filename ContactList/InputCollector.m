//
//  InputCollector.m
//  ContactList
//
//  Created by Chris Jones on 2017-01-10.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString {
    
    NSLog(@"%@", promptString);
    
    char input [255];
    fgets(input, 255, stdin);
    NSString *inputString = [[NSString stringWithCString:input encoding:NSUTF8StringEncoding]stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return inputString;
}

@end
