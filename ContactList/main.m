//
//  main.m
//  ContactList
//
//  Created by Chris Jones on 2017-01-10.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InputCollector *inputCollection = [InputCollector new];
        ContactList *list = [ContactList new];
        BOOL programRun = YES;
        
        while (YES) {
        
            NSString *menu = @"\nWhat would you like to do? \n\nnew - Create a new contact list\nlist - List all contacts\nquit - Quit";
            
            if ([[inputCollection inputForPrompt:menu] isEqualToString:@"new"]) {
                Contact *contact = [Contact new];
                contact.name = [inputCollection inputForPrompt:@"Enter your first and last name, separated by a space"];
                contact.email = [inputCollection inputForPrompt:@"Enter your email address."];
                [list.contactList addObject:contact];
            } else if ([[inputCollection inputForPrompt:menu] isEqualToString:@"list"]) {
                for (Contact *contact in list.contactList) {
                [inputCollection inputForPrompt:[NSString stringWithFormat:@"Name: %@ Email: %@", contact.name, contact.email]];
                }
            } else if ([[inputCollection inputForPrompt:menu] isEqualToString:@"quit"]) {
                programRun = NO;
            }
        }
    }
    return 0;
}
