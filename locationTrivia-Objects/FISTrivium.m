//
//  FISTrivium.m
//  locationTrivia-Objects
//
//  Created by Richard Martin on 2015-11-26.
//  Copyright © 2015 Joe Burgess. All rights reserved.
//

#import "FISTrivium.h"

@implementation FISTrivium

// default initializer

-(instancetype)init {
    self = [self initWithContent:@""
                           likes:0];
    
    return self;
}

// designated initializer

-(instancetype)initWithContent:(NSString *)content
                         likes:(NSUInteger)likes {
    self = [super init];
    if (self) {
        _content = content;
        _likes = likes;
    }
    
    return self;
}


@end
