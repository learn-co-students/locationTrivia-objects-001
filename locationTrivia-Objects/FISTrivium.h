//
//  FISTrivium.h
//  locationTrivia-Objects
//
//  Created by Stacy Johnson on 10/27/15.
//  Copyright © 2015 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISTrivium : NSObject

@property (strong, nonatomic) NSString *content;
@property (nonatomic) NSUInteger likes;

-(instancetype)init;
-(instancetype)initWithContent:(NSString *)content likes:(NSUInteger)likes;

@end
