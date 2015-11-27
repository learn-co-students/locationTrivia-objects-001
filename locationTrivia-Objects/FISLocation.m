//
//  FISLocation.m
//  locationTrivia-Objects
//
//  Created by Richard Martin on 2015-11-26.
//  Copyright © 2015 Joe Burgess. All rights reserved.
//

#import "FISLocation.h"

@implementation FISLocation

// default initializer

-(instancetype)init {
    self = [self initWithName:@""
                     latitude:0
                    longitude:0];
    
    return self;
}

// designated initializer

-(instancetype)initWithName:(NSString *)name
                 latitude:(CGFloat)latitude
                  longitude:(CGFloat)longitude {
    self = [super init];
    if (self) {
        _name = name;
        _latitude = latitude;
        _longitude = longitude;
        _trivia = [[NSMutableArray alloc]init];
    }
    
    return self;
}

-(NSString *)stringByTruncatingNameToLength:(NSUInteger)length {
    
    NSUInteger stringLength = [self.name length];
    
    
    NSString *returnString = @"";
    
    if (length > stringLength) {
        returnString = self.name;
    } else {
        returnString = [self.name substringToIndex:length];
    }
    
    return returnString;
}

-(BOOL)hasValidData {
    
    if ([self.name isEqualToString:@""] || self.name == nil) {
        return NO;
    }
    
    if (self.latitude < -90.0 || self.latitude > 90.0) {
        return NO;
    }
    
    if (self.longitude <= -180.0 || self.longitude > 180.0) {
        return NO;
    }
    
    return YES;
}

-(FISTrivium *)triviumWithMostLikes {
    
    NSUInteger triviaArrayCount = [self.trivia count];
    
    if ( triviaArrayCount == 0) {
        return nil;
    } else {
        NSArray *sortedTrivia = @[];
    
        NSSortDescriptor *sortTrivia = [NSSortDescriptor sortDescriptorWithKey:@"likes" ascending:NO];
        
        sortedTrivia = [self.trivia sortedArrayUsingDescriptors:@[sortTrivia]];
        
        return sortedTrivia[0];
    }
    
}

@end
