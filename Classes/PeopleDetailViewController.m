//
//  AddPersonViewController.m
//  CocoaHeadsSample
//
//  Created by Jamie Pinkham on 8/10/09.
//  Copyright 2009 Mobelux. All rights reserved.
//

#import "PeopleDetailViewController.h"
#import "Person.h"

@implementation PeopleDetailViewController

@synthesize managedObjectContext, person;

 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewWillAppear:(BOOL)animated {
    if([self person] == nil){
        [self setTitle:@"Add Person"];
    }
    else{
        [self setTitle:[[self person] fullName]];
        NSLog(@"person: %@", [[self person] firstName]);
        [firstNameTextField setText:[[self person] firstName]];
        [lastNameTextField setText:[[self person] lastName]];
    }
    [super viewWillAppear:animated];
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

- (IBAction)doneAction:(id)sender{
    if(([firstNameTextField text] != @"") || ([lastNameTextField text] != @"")){
        if([self person] == nil){
            NSEntityDescription *entity = [NSEntityDescription entityForName:@"Person" inManagedObjectContext:[self managedObjectContext]];
            [self setPerson:[NSEntityDescription insertNewObjectForEntityForName:[entity name] inManagedObjectContext:[self managedObjectContext]]];      
        }
        [[self person] setFirstName:[firstNameTextField text]];
        [[self person] setLastName:[lastNameTextField text]];
        
        [[self navigationController] popViewControllerAnimated:YES];
    }
}


@end
