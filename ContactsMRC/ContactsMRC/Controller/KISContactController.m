//
//  KISContactController.m
//  ContactsMRC
//
//  Created by Kevin Stewart on 8/13/20.
//  Copyright © 2020 Kevin Stewart. All rights reserved.
//

#import "KISContactController.h"

@interface KISContactController ()

@property (nonatomic) NSMutableArray<KISContact *> *internalContacts;

@end

@implementation KISContactController

- (instancetype)init
{
    if (self = [super init]) {
        _internalContacts = [[NSMutableArray alloc]init];
    }
    return self;
}

- (void)addContact:(KISContact *)contact
{
    [self.internalContacts addObject:contact];
}

- (void)updateContact:(KISContact *)contact
                 name:(NSString *)name
         emailAddress:(NSString *)emailAddress
          phoneNumber:(NSString *)phoneNumber
{
    NSUInteger index = [self.internalContacts indexOfObject:contact];
    contact.name = name;
    contact.emailAddress = emailAddress;
    contact.phoneNumber = phoneNumber;
    [self.internalContacts replaceObjectAtIndex:index withObject:contact];
}

- (NSArray *)contacts
{
    return [[self.internalContacts copy] autorelease];
}

@end
