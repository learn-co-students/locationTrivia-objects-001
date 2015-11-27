//
//  FISLocation.h
//  locationTrivia-Objects
//
//  Created by Richard Martin on 2015-11-26.
//  Copyright © 2015 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISTrivium.h"

@interface FISLocation : NSObject

@property (strong, nonatomic) NSString *name;

@property (nonatomic) CGFloat latitude;

@property (nonatomic) CGFloat longitude;

@property (strong, nonatomic) NSMutableArray *trivia;

// default initializer

-(instancetype)init;

// designated initializer

-(instancetype)initWithName:(NSString *)name
                 latitude:(CGFloat)latitude
                  longitude:(CGFloat)longitude;

-(NSString *)stringByTruncatingNameToLength:(NSUInteger)length;

-(BOOL)hasValidData;

-(FISTrivium *)triviumWithMostLikes;

@end
