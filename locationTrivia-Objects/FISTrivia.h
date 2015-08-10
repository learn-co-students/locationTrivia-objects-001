//
//  FISTrivia.h
//  locationTrivia-Objects
//
//  Created by Victoria Friedman on 8/10/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISTrivia : NSObject

@property (nonatomic) NSString *content;
@property (nonatomic) NSInteger likes;

-(id)initWithContent:(NSString *)content likes:(NSInteger)likes;


@end
