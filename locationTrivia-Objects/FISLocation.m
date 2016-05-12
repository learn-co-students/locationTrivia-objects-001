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
    self = [super init];
    return self;
}

- (instancetype)initWithName:(NSString *)name
                    latitude:(CGFloat)latitude
                   longitude:(CGFloat)longitude {
    self = [super init];
    return self;
}

- (NSString *)stringByTruncatingNameToLength:(NSUInteger)length {
    return nil;
}

- (BOOL)hasValidData {
    return NO;
}

- (FISTrivium *)triviumWithMostLikes {
    return nil;
}

@end
