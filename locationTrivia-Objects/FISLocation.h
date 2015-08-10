//
//  FISLocation.h
//  locationTrivia-Objects
//
//  Created by Victoria Friedman on 8/10/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISTrivia.h"


@interface FISLocation : NSObject

@property (nonatomic) NSString *name;

@property (nonatomic) NSNumber *longitude;

@property (nonatomic) NSNumber *latitude;

@property (nonatomic, strong) NSMutableArray *trivia;

- (NSString *)shortenedNameToLength:(NSInteger)count;

-(id)initWithName:(NSString *)name longitude:(NSNumber *)longitude latitude:(NSNumber *)latitude;

- (BOOL)verifyLocation;

-(id) topTrivia:(FISTrivia *)trivia;



@end
