//
//  FISTrivium.h
//  locationTrivia-Objects
//
//  Created by John Richardson on 5/12/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISTrivium : NSObject

@property (nonatomic) NSString *content;

@property (nonatomic) NSUInteger likes;

- (instancetype)init;

- (instancetype)initWithContent:(NSString*)content
                          likes:(NSUInteger)likes;

@end
