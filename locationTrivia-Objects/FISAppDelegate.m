//  FISAppDelegate.m

#import "FISAppDelegate.h"
#import "FISLocation.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}


-(NSArray *)allLocationNames {
    
    NSMutableArray *locationNames = [[NSMutableArray alloc] init];
    for (FISLocation *location in self.locations) {
        [locationNames addObject:location.name];
    }
    return locationNames;
}

-(FISLocation *)locationNamed:(NSString *)name {
    
    NSPredicate *filterByName = [NSPredicate predicateWithFormat:@"name LIKE %@", name];
    NSArray *locationsWithGivenName = [self.locations filteredArrayUsingPredicate:filterByName];
    
    if (locationsWithGivenName.count > 0) {
        return locationsWithGivenName[0];
    }
    
    return nil;
}

-(NSArray *)locationsNearLatitude:(CGFloat )latitude
                        longitude:(CGFloat )longitude
                           margin:(CGFloat )margin {
    
    CGFloat latMin = latitude - margin;
    CGFloat latMax = latitude + margin;
    CGFloat longMin = longitude - margin;
    CGFloat longMax = longitude + margin;
    
    NSMutableArray *locationsWithinMargin = [[NSMutableArray alloc] init];
    
    for (FISLocation *location in self.locations) {
        if (location.latitude >= latMin && location.latitude <= latMax) {
            if (location.longitude >= longMin && location.longitude <= longMax) {
                [locationsWithinMargin addObject:location];
            }
        }
    }

    return locationsWithinMargin;
} 

@end
