//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSArray *)allLocationNames{
    
    NSMutableArray *allNames = [[NSMutableArray alloc] init];
    for (FISLocation *location in self.locations) {
        [allNames addObject:location.name];
    }
    
    return allNames;
}
- (FISLocation *)locationNamed:(NSString *)name{
    for (FISLocation *location in self.locations) {
        if ([location.name isEqualToString:name]) {
            return location;
        }
    }
    return nil;
}
- (NSArray *)locationsNearLatitude:(CGFloat)latitude longitude:(CGFloat)longitude margin:(CGFloat)margin{
    
    NSMutableArray *nearLocations = [[NSMutableArray alloc] init];
    
    for (FISLocation *location in self.locations) {
        if (fabs(location.latitude - latitude) <= margin && fabs(location.longitude - longitude) <= margin) {
            [nearLocations addObject:location];
        }
    }
    
    return nearLocations;
}

@end
