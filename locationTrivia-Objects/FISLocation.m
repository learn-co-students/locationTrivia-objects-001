//
//  FISLocation.m
//  locationTrivia-Objects
//
//  Created by Stacy Johnson on 10/27/15.
//  Copyright © 2015 Joe Burgess. All rights reserved.
//

#import "FISLocation.h"

@implementation FISLocation

-(instancetype)init {
    self = [self initWithName:@""
                     latitude:0.0
                    longitude:0.0];
    
    return self;
}

-(instancetype)initWithName:(NSString *)name
                   latitude:(CGFloat)latitude
                  longitude:(CGFloat)longitude {
 
    self = [super init];
    if (self) {
        _name = name;
        _latitude = latitude;
        _longitude = longitude;
        _trivia = [[NSMutableArray alloc] init];
    }
    
    return self;
}

-(NSString *)stringByTruncatingNameToLength:(NSUInteger)length {
    
    if (self.name.length <= length ) {
        return self.name;
    }
    
    return [self.name substringToIndex:length];
}

-(BOOL)hasValidData {
    
    if (self.name.length == 0) {
        return NO;
    }
    
    if (self.latitude < -90.0 || self.latitude > 90.0 ) {
        return NO;
    }
    
    if (self.longitude <= -180.0 || self.longitude > 180) {
        return NO;
    }
    
    return YES;
}

-(FISTrivium *)triviumWithMostLikes {
 
    if (self.trivia.count  == 0) {
        return nil;
    }
    
    NSSortDescriptor *triviumDescLikesDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"likes" ascending:NO];
    NSArray *sortedByLikes  =[self.trivia sortedArrayUsingDescriptors:@[triviumDescLikesDescriptor]];
    
    return sortedByLikes[0];
}

@end
