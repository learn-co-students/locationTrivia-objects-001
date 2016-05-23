//
//  FISLocation.m
//  locationTrivia-Objects
//
//  Created by John Richardson on 5/12/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISLocation.h"

@implementation FISLocation

- (instancetype)init {
    self = [self initWithName:@""
                     latitude:0
                    longitude:0];
    self.trivia = [[NSMutableArray alloc] init];
    return self;
}

- (instancetype)initWithName:(NSString *)name
                    latitude:(CGFloat)latitude
                   longitude:(CGFloat)longitude {
    self = [super init];
    if (self) {
        _name = name;
        _latitude = latitude;
        _longitude = longitude;
    }
    self.trivia = [[NSMutableArray alloc] init];
    return self;
}

- (NSString *)stringByTruncatingNameToLength:(NSUInteger)length {
    if (length <= [self.name length]) {
        return [self.name substringToIndex:length];
    } else {
        return self.name;
    }
}

- (BOOL)hasValidData {
    if ([self.name length] == 0) {
        return NO;
    } else if (ABS(self.latitude) > 90.0) {
        return NO;
    } else if (ABS(self.longitude) > 180.0 || self.longitude == -180.0) {
        return NO;
    } else {
        return YES;
    }
}

- (FISTrivium *)triviumWithMostLikes {
    if ([self.trivia count] == 0) {
        return nil;
    } else {
        FISTrivium *mostLikedTrivium = [self.trivia objectAtIndex:0];
        for (NSUInteger i = 1; i < [self.trivia count]; i++) {
            if ([self.trivia[i] likes] > [mostLikedTrivium likes] ) {
                mostLikedTrivium = self.trivia[i];
            }
        }
        return mostLikedTrivium;
    }
}

@end
