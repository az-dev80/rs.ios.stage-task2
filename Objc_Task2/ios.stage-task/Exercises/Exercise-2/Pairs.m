#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
  
    NSSet *set = [NSSet setWithArray:array];
    int l = 0;
    for (int i=0; i <array.count; i++) {
        int y = array[i].intValue + number.intValue;
        NSNumber *x = [NSNumber numberWithInt:y];
        if ([set containsObject: x]) {
            l++;
    }
    }
    return l;
}

@end
