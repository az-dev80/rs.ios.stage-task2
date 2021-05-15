#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    if (array == nil){
        return @[];
    }
    NSMutableArray *arr = [[NSMutableArray alloc] init];
    NSMutableArray *arr2 = [[NSMutableArray alloc] init];
    for (int i = 0; i < array.count; i++){
        if ([[array objectAtIndex:i] isKindOfClass: NSString.class] || [[array objectAtIndex:i] isKindOfClass: NSNumber.class]){
            return @[];
        }
        if ([[array objectAtIndex:i] isKindOfClass: NSArray.class]){
            if ([[array objectAtIndex:i].firstObject isKindOfClass: NSNumber.class]){
                [arr addObjectsFromArray:[array objectAtIndex:i]];
            }
            if ([[array objectAtIndex:i].firstObject isKindOfClass: NSString.class]){
                [arr2 addObjectsFromArray:[array objectAtIndex:i]];
            }
        }
    }
    NSArray *resA = [arr sortedArrayUsingSelector:@selector(compare:)];
    NSArray *resB = [arr2 sortedArrayUsingSelector:@selector(compare:)];
    
    if (arr.count != 0 && arr2.count == 0){
        return resA;
    }
    else if (arr.count == 0 && arr2.count != 0){
        return resB;
    }
    else {
        NSArray *resB1 = [[resB reverseObjectEnumerator] allObjects];
        NSArray * resC = @[resA, resB1];
        return resC;
    }
}

@end
