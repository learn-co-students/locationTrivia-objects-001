//
//  FISTrivium.h
//  locationTrivia-Objects
//
//  Created by Alex J Lee on 10/26/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISTrivium : NSObject

@property(nonatomic, strong)NSString *content;
@property(nonatomic)NSUInteger likes;

- (instancetype)init;

- (instancetype)initWithContent:(NSString *)content
                          likes:(NSUInteger)likes;

@end
