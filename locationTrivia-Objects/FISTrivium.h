//
//  FISTrivium.h
//  locationTrivia-Objects
//
//  Created by Richard Martin on 2015-11-26.
//  Copyright © 2015 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISTrivium : NSObject

@property (strong, nonatomic) NSString *content;
@property (nonatomic) NSUInteger likes;

// default initializer

-(instancetype)init;

// designated initializer

-(instancetype)initWithContent:(NSString *)content
                         likes:(NSUInteger)likes;


@end
