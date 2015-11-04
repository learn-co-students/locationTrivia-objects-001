//
//  FISTrivium.h
//  locationTrivia-Objects
//
//  Created by Ben on 11/1/15.
//  Copyright © 2015 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISTrivium : NSObject

@property (nonatomic, strong) NSString *content;
@property (nonatomic) NSUInteger likes;

- (instancetype) init;
- (instancetype) initWithContent: (NSString *)content likes: (NSUInteger)likes;

@end
