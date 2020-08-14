//
//  KISContactController.h
//  ContactsMRC
//
//  Created by Kevin Stewart on 8/13/20.
//  Copyright © 2020 Kevin Stewart. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KISContact.h"

NS_ASSUME_NONNULL_BEGIN

@interface KISContactController : NSObject

@property (nonatomic, readonly, copy) NSArray<KISContact *> *contacts;

- (void)addContact:(KISContact *)contact;
- (void)updateContact:(KISContact *)contact
                 name:(NSString *)name
         emailAddress:(NSString *)emailAddress
          phoneNumber:(NSString *)phoneNumber;

@end

NS_ASSUME_NONNULL_END
