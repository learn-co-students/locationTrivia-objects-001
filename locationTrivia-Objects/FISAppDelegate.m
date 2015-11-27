//  FISAppDelegate.m

#import "FISAppDelegate.h"
#import "FISLocation.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(NSArray *)allLocationNames {
    
    NSMutableArray *allNamesArray = [[NSMutableArray alloc]init];
    
    for (FISLocation *location in self.locations) {
        [allNamesArray addObject:location.name];
    }

    return allNamesArray;
}

-(FISLocation *)locationNamed:(NSString *)name {
    
    for (FISLocation *location in self.locations) {
        
        if ([name isEqualToString:location.name]) {
            return location;
        }
    }
    return nil;
}

-(NSArray *)locationsNearLatitude:(CGFloat)latitude
                        longitude:(CGFloat)longitude
                           margin:(CGFloat)margin {
    
    CGFloat latPlusMargin = latitude + margin;
    CGFloat latMinusMargin = latitude - margin;
    CGFloat longPlusMargin = longitude + margin;
    CGFloat longMinusMargin = longitude - margin;
    
    NSMutableArray *withinMargin = [[NSMutableArray alloc]init];
    
    for (FISLocation *location in self.locations) {
        if (location.latitude <= latPlusMargin && location.latitude >= latMinusMargin && location.longitude <= longPlusMargin && location.longitude >= longMinusMargin) {
            [withinMargin addObject:location];
        }
    }
    
    return withinMargin;
}

@end
