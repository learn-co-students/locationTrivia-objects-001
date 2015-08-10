//
//  FISLocation.m
//  locationTrivia-Objects
//
//  Created by Victoria Friedman on 8/10/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "FISLocation.h"

@implementation FISLocation

-(id)initWithName:(NSString *)name longitude:(NSNumber *)longitude latitude:(NSNumber *)latitude{
    self = [super init];
    if (self) {
        _name = name;
        _longitude = longitude;
        _latitude = latitude;
    }
    return self;
}

- (NSString *)shortenedNameToLength:(NSInteger)count
{

    if (count < 0) {
        return self.name;
    }
    return [self.name substringToIndex:count];
}


-(BOOL)verifyLocation
{
    CGFloat lat = [self.latitude floatValue];
    CGFloat lng = [self.longitude floatValue];
    
    BOOL validLat = lat>=-90.0 && lat <=90.0;
    BOOL validLng = lng>=-180.0 && lng <=180.0;
    
    if (![self.name isEqualToString:@""]&& validLat && validLng) {
        return YES;
    }
    return NO;
}

-(id)topTrivia{
    FISTrivia *most = self.trivia[0];
    NSInteger firstLikes = most.likes;
    for (FISTrivia *trivia in self.trivia){
        if (trivia.likes > firstLikes){
            most = trivia;
        }
        
    }
    return most;
}

@end
