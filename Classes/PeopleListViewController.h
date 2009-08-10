//
//  RootViewController.h
//  CocoaHeadsSample
//
//  Created by Jamie Pinkham on 8/10/09.
//  Copyright Mobelux 2009. All rights reserved.
//

@interface PeopleListViewController : UITableViewController <NSFetchedResultsControllerDelegate> {
	NSFetchedResultsController *fetchedResultsController;
	NSManagedObjectContext *managedObjectContext;
}

@property (nonatomic, retain) NSFetchedResultsController *fetchedResultsController;
@property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;

@end
