//
//  AddPersonViewController.h
//  CocoaHeadsSample
//
//  Created by Jamie Pinkham on 8/10/09.
//  Copyright 2009 Mobelux. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Person;

@interface PeopleDetailViewController : UIViewController {
    NSManagedObjectContext *managedObjectContext;
    Person *person;
    IBOutlet UITextField *firstNameTextField;
    IBOutlet UITextField *lastNameTextField;
}

@property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain) Person *person;

- (IBAction)doneAction:(id)sender;

@end
