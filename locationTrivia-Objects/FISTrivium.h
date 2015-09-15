//
//  FISTrivium.h
//  
//
//  Created by Wo Jun Feng on 9/14/15.
//
//

#import <Foundation/Foundation.h>

@interface FISTrivium : NSObject

@property (strong, nonatomic)NSString *content;
@property (nonatomic)NSUInteger likes;

- (instancetype)init;
- (instancetype)initWithContent:(NSString *)content
                          likes:(NSUInteger)likes;
@end
