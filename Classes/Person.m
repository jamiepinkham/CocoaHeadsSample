//
//  Person.m
//  CocoaHeadsSample
//
//  Created by Jamie Pinkham on 8/10/09.
//  Copyright 2009 Mobelux. All rights reserved.
//

#import "Person.h"


@implementation Person

@dynamic firstName, lastName, displayIndex;
@synthesize fullName;

-(NSString *)fullName{
    return [NSMutableString stringWithFormat:@"%@ %@", [self firstName], [self lastName]];
}

-(void)dealloc{
    [fullName release];
    [super dealloc];
}

@end
