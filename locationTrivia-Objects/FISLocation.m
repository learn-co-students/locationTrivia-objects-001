//
//  FISLocation.m
//  
//
//  Created by Wo Jun Feng on 9/14/15.
//
//

#import "FISLocation.h"

@implementation FISLocation

- (instancetype)init{
    self = [self initWithName:@""
                     latitude:0
                    longitude:0];
    return self;
};

- (instancetype)initWithName:(NSString *)name
                    latitude:(CGFloat)latitude
                   longitude:(CGFloat)longitude{
    self = [super init];
    if (self) {
        _name = name;
        _latitude = latitude;
        _longitude = longitude;
        _trivia = [[NSMutableArray alloc]init];
    }
    return self;
};

- (NSString *)stringByTruncatingNameToLength:(NSUInteger)length{
    if (self.name.length < length) {
        length = self.name.length;
    }

    self.name = [self.name substringToIndex:length];

    return self.name;
};

- (BOOL)hasValidData{
    if ([self.name isEqualToString: @""] ||
        self.name == nil ||
        self.latitude < -90.0 ||
        self.latitude > 90.0 ||
        self.longitude <= -180.0 ||
        self.longitude > 180.0) {
        return NO;
    }
    
    return YES;
};
- (FISTrivium *)triviumWithMostLikes{
   
//    NSSortDescriptor *sortByNilDesc = [NSSortDescriptor sortDescriptorWithKey:test.content
//                                                                    ascending:NO];
//    NSArray *highestLikes = [self.trivia sortedArrayUsingDescriptors:@[sortByNilDesc]];
//    
//    return highestLikes[0];
    
//    FISTrivium *trivium = [[FISTrivium alloc]init];
    
    FISTrivium *highestTrivium = [[FISTrivium alloc]init];
    NSUInteger highestLikes = 0;

    if (self.trivia.count == 0) {
        return nil;
    } else {
        for (FISTrivium *trivium in self.trivia) {
            if (trivium.likes > highestLikes) {
                highestLikes = trivium.likes;
                highestTrivium = trivium;
            }
        }
        return highestTrivium;
    }
    
};


@end
