//
//  KISContactDetailViewController.h
//  ContactsMRC
//
//  Created by Kevin Stewart on 8/13/20.
//  Copyright © 2020 Kevin Stewart. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KISContactController.h"
#import "KISContact.h"
#import "KISContactsTableViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface KISContactDetailViewController : UIViewController

@property (nonatomic) KISContactController *kisContactController;
@property (nonatomic) KISContact *contact;

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneNumberTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailAddressTextField;




@end

NS_ASSUME_NONNULL_END
