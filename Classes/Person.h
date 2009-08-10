//
//  Person.h
//  CocoaHeadsSample
//
//  Created by Jamie Pinkham on 8/10/09.
//  Copyright 2009 Mobelux. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface Person : NSManagedObject {
    NSString *fullName;
}

@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, copy) NSString *lastName;
@property (nonatomic, copy) NSString *fullName;
@property (nonatomic, retain) NSNumber *displayIndex;

@end
