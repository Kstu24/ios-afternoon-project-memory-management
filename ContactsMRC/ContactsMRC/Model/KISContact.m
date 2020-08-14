//
//  KISContact.m
//  ContactsMRC
//
//  Created by Kevin Stewart on 8/13/20.
//  Copyright © 2020 Kevin Stewart. All rights reserved.
//

#import "KISContact.h"

@implementation KISContact

- (instancetype)initWithName:(NSString *)aName
                 emailAddress:(NSString *)anEmailAddress
                 phoneNumber:(NSString *)aPhoneNumber
{
    if (self = [super init]) {
        _name = aName.copy;
        _emailAddress = anEmailAddress.copy;
        _phoneNumber = aPhoneNumber.copy;
    }
    return self;
}

+ (instancetype)contactWithName:(NSString *)name emailAdress:(NSString *)emailAddress phoneNumber:(NSString *)phoneNumber
{
     return [[[self alloc] initWithName:name
                           emailAddress:emailAddress
                            phoneNumber:phoneNumber] autorelease];}

- (void)dealloc
{
    NSLog(@"-[KISContact dealloc]: %@", _name);
    
    [_name release];
    _name = nil;
    
    [_emailAddress release];
    _emailAddress = nil;
    
    [_phoneNumber release];
    _phoneNumber = nil;
    
    [super dealloc];
}

@end
