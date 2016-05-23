//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSArray *)allLocationNames {
    NSMutableArray *allLocationNames = [[NSMutableArray alloc] init];
    for(NSUInteger i = 0; i < [self.locations count]; i++) {
        [allLocationNames addObject:[self.locations[i] name]];
    }
    return allLocationNames;
}

- (FISLocation *)locationNamed:(NSString *)name {
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"name CONTAINS[cd] %@", name];
    NSArray *matchingLocations = [self.locations filteredArrayUsingPredicate:predicate];
    return [matchingLocations count] > 0 ? matchingLocations[0]: nil;
}

- (NSArray *)locationsNearLatitude:(CGFloat)latitude longitude:(CGFloat)longitude margin:(CGFloat)margin {
    NSMutableArray *nearbyLocations = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < [self.locations count]; i++) {
        FISLocation *location = self.locations[i];
        CGFloat latMargin = ABS(latitude - location.latitude);
        CGFloat longMargin = ABS(longitude - location.longitude);
        if ( latMargin <= margin && longMargin <= margin) {
            [nearbyLocations addObject:location];
        }
    }
    return nearbyLocations;
}

@end
