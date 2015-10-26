//
//  FISTrivium.m
//  locationTrivia-Objects
//
//  Created by Alex J Lee on 10/26/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "FISTrivium.h"

@implementation FISTrivium

- (instancetype)init{
    self = [self initWithContent:@""
                           likes:0];
    return self;
}

- (instancetype)initWithContent:(NSString *)content likes:(NSUInteger)likes{
    self = [super init];
    return self;
}

@end
