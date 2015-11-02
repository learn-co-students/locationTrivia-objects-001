//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSArray *)allLocationNames {
    NSMutableArray *arrayOfAllLocations = [[NSMutableArray alloc]init];
    for (FISLocation *locationsInFISLocation in self.locations) {
        [arrayOfAllLocations addObject:locationsInFISLocation.name];
    }
    return arrayOfAllLocations;
}

- (FISLocation *)locationNamed:(NSString *)name {
    for (FISLocation *locationsInFISLocation in self.locations) {
        if ([locationsInFISLocation.name isEqualToString:name]) {
            return locationsInFISLocation;
        }
    }
    return nil;
//    NSPredicate *filterByName = [NSPredicate predicateWithFormat:@"name = %@", name];
//    NSArray *arrayFilteredByName = [self.locations filteredArrayUsingPredicate:filterByName];
//    return arrayFilteredByName[0];
}

- (NSArray *)locationsNearLatitude:(CGFloat)latitude longitude:(CGFloat)longitude margin:(CGFloat)margin {
    NSMutableArray *allLocationsWithin = [[NSMutableArray alloc]init];
    CGFloat latPlus = latitude + margin;
    CGFloat latMinus = latitude - margin;
    CGFloat longPlus = longitude + margin;
    CGFloat longMinus = longitude - margin;
    for (FISLocation *locationsInFISLocation in self.locations) {
        if (locationsInFISLocation.latitude >= latMinus &&
            locationsInFISLocation.latitude <= latPlus &&
            locationsInFISLocation.longitude >= longMinus &&
            locationsInFISLocation.longitude <= longPlus) {
            [allLocationsWithin addObject:locationsInFISLocation];
        }
    }
/*    NSPredicate *latitudeMargin = [NSPredicate predicateWithFormat:@"latitude <= %f AND latitude >= %f AND longitude <= %f AND longitude >= %f ", latPlus, latMinus, longPlus, longMinus];
    NSArray *array = [self.locations filteredArrayUsingPredicate:latitudeMargin];
    NSLog(@"%f/n%f/n%f/n%f", latPlus, latMinus, longPlus, longMinus);
 */
    return allLocationsWithin;
}

@end
