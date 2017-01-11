//
//  ContactList.h
//  ContactList
//
//  Created by Chris Jones on 2017-01-10.
//  Copyright © 2017 Jonescr. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Contact;

@interface ContactList : NSObject

@property (nonatomic) NSMutableArray <Contact*> *contactList;

@end
