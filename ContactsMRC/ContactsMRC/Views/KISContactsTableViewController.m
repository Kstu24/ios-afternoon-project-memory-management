//
//  KISContactsTableViewController.m
//  ContactsMRC
//
//  Created by Kevin Stewart on 8/13/20.
//  Copyright © 2020 Kevin Stewart. All rights reserved.
//

#import "KISContactsTableViewController.h"
#import "KISContactsTableViewController.h"
#import "KISContact.h"
#import "KISContactDetailViewController.h"

@interface KISContactsTableViewController ()

@property (nonatomic) KISContactController *kisContactController;
@property (nonatomic) KISContact *contact;

@end

@implementation KISContactsTableViewController

- (instancetype)initWithCoder:(NSCoder *)coder
{
    if (self = [super initWithCoder:coder]) {
        _kisContactController = [[KISContactController alloc]init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.kisContactController addContact:[KISContact contactWithName:@"Kevin Stewart" emailAdress:@"Kistewart419@gmail.com" phoneNumber:@"(804)513-0797"]];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.kisContactController.contacts.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    
    KISContact *contact = [self.kisContactController.contacts objectAtIndex:indexPath.row];
    cell.textLabel.text = contact.name;
    
    return cell;
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"ContactDetailSegue"]) {
        KISContactDetailViewController *detailVC = [segue destinationViewController];
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        detailVC.kisContactController = self.kisContactController;
        detailVC.contact = [self.kisContactController.contacts objectAtIndex:indexPath.row];
    } else if ([[sender identifier] isEqualToString:@"AddContactSegue"]) {
        KISContactDetailViewController *addVC = [segue destinationViewController];
        addVC.kisContactController = self.kisContactController;
    }
}


@end
