//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSArray *)allLocationNames{
    NSMutableArray *locationNames = [[NSMutableArray alloc]init];
    for (FISLocation *location in self.locations) {
        [locationNames addObject:location.name];
    }
    return locationNames;
};

- (FISLocation *)locationNamed:(NSString *)name{
    for (FISLocation *location in self.locations) {
        if ([name isEqualToString:location.name]) {
            return location;
        }
    }
    return nil;
};
- (NSArray *)locationsNearLatitude:(CGFloat)latitude
                         longitude:(CGFloat)longitude
                            margin:(CGFloat)margin{
    NSMutableArray *locations = [[NSMutableArray alloc]init];
    
    CGFloat maxLatitude = latitude + margin;
    CGFloat minLatitude = latitude - margin;
    CGFloat maxLongitude = longitude + margin;
    CGFloat minLongitude = longitude - margin;
    
    for (FISLocation *location in self.locations) {
        if (location.latitude <= maxLatitude &&
            location.latitude >= minLatitude &&
            location.longitude <= maxLongitude &&
            location.longitude >= minLongitude) {
            [locations addObject:location];
        }
    }
    
    return locations;
};
@end
