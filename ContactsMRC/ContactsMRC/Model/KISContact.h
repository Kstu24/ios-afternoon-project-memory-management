//
//  KISContact.h
//  ContactsMRC
//
//  Created by Kevin Stewart on 8/13/20.
//  Copyright © 2020 Kevin Stewart. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface KISContact : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *emailAddress;
@property (nonatomic, copy) NSString *phoneNumber;

- (instancetype)initWithName:(NSString *)aName
                 emailAddress:(NSString *)anEmailAddress
                 phoneNumber:(NSString *)aPhoneNumber;

+ (instancetype)contactWithName:(NSString *)name
                    emailAdress:(NSString *)emailAddress
                    phoneNumber:(NSString *)phoneNumber;

- (void)dealloc;
@end

NS_ASSUME_NONNULL_END
