//
//  FISTrivia.m
//  locationTrivia-Objects
//
//  Created by Victoria Friedman on 8/10/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "FISTrivia.h"

@implementation FISTrivia

-(id)initWithContent:(NSString *)content likes:(NSInteger)likes{
    self = [super init];
    if (self){
        _content = content;
        _likes = likes;
    }
    return self;
}

@end
