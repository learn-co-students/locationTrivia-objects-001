//
//  FISLocation.m
//  locationTrivia-Objects
//
//  Created by Alex J Lee on 10/26/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "FISLocation.h"

@implementation FISLocation

- (instancetype)init{
    self = [self initWithName:@""
                     latitude:0
                    longitude:0];
    return self;
}

- (instancetype)initWithName:(NSString *)name latitude:(CGFloat)latitude longitude:(CGFloat)longitude{
    self = [super init];
    if (self){
        _name = name;
        _latitude = latitude;
        _longitude = longitude;
        _trivia = [[NSMutableArray alloc]init];
    }
    return self;
}

- (NSString *)stringByTruncatingNameToLength:(NSUInteger)length{
    NSUInteger objLength = self.name.length;
    if (objLength == length || length > objLength) {
        return self.name;
    } else {
        return [self.name substringToIndex:length];
    }
}

- (BOOL)hasValidData{
    if ([self.name  isEqual: @""] ||
        self.name == nil ||
        self.latitude < -90 ||
        self.latitude > 90 ||
        self.longitude <= -180 ||
        self.longitude > 180) {
            return NO;
    }
    return YES;
}

- (FISTrivium *)triviumWithMostLikes{
    if (self.trivia.count == 0){
        return nil;
    } else {
        NSSortDescriptor *sortByLikes = [NSSortDescriptor sortDescriptorWithKey:@"likes" ascending:true];
        
        NSArray *filteredTrivium = [self.trivia sortedArrayUsingDescriptors:@[sortByLikes]];
        return filteredTrivium.lastObject;
    }
}

@end
