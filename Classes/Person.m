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

-(NSString *)fullName{
    return [NSString stringWithFormat:@"%@ %@", [self firstName], [self lastName]];
}

-(void)dealloc{
    [super dealloc];
}

@end
