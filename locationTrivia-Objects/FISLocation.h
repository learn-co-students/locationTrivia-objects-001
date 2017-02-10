//
//  FISLocation.h
//  locationTrivia-Objects
//
//  Created by Alex J Lee on 10/26/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISTrivium.h"

@interface FISLocation : NSObject

@property(nonatomic, strong) NSString *name;
@property(nonatomic) CGFloat latitude;
@property(nonatomic) CGFloat longitude;
@property(nonatomic, strong) NSMutableArray *trivia;

-(instancetype)init;

//designated initializer
-(instancetype)initWithName:(NSString *)name
                   latitude:(CGFloat)latitude
                  longitude:(CGFloat)longitude;

- (NSString *)stringByTruncatingNameToLength:(NSUInteger)length;
- (BOOL)hasValidData;
- (FISTrivium *)triviumWithMostLikes;

@end
