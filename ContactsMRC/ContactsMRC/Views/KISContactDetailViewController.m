//
//  KISContactDetailViewController.m
//  ContactsMRC
//
//  Created by Kevin Stewart on 8/13/20.
//  Copyright © 2020 Kevin Stewart. All rights reserved.
//

#import "KISContactDetailViewController.h"

@interface KISContactDetailViewController ()

@end

@implementation KISContactDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self updateViews];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)updateViews
{
    if (self.contact != nil) {
        self.title = self.contact.name;
        self.nameTextField.text = self.contact.name;
        self.emailAddressTextField.text = self.contact.emailAddress;
        self.phoneNumberTextField.text = self.contact.phoneNumber;
    } else {
        self.title = @"Create Contact";
    }
}

- (IBAction)saveButtoneTapped:(id)sender
{
    NSString *name = self.nameTextField.text;
    NSString *email = self.emailAddressTextField.text;
    NSString *phoneNumber = self.phoneNumberTextField.text;
    
    if (self.contact != nil) {
        [self.kisContactController updateContact:[self contact]
                                            name:name
                                    emailAddress:email
                                     phoneNumber:phoneNumber];
    } else {
        KISContact *newContact = [[KISContact alloc]initWithName:name
                                                    emailAddress:email
                                                     phoneNumber:phoneNumber];
        [self.kisContactController addContact:newContact];
        [newContact release];
    }
    [self.navigationController popToRootViewControllerAnimated:true];
}


- (void)dealloc {
    [_nameTextField release];
    [_phoneNumberTextField release];
    [_emailAddressTextField release];
    [super dealloc];
}
@end
