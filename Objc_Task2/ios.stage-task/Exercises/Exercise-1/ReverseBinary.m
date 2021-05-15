#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    int i = 1;
    NSMutableArray *mArr = [[NSMutableArray alloc] init];
    while (i<9) {
        NSNumber *x = [NSNumber numberWithInt: n%2];
        [mArr addObject:x];
        n = n/2;
        i++;
    }
    //NSArray *arr = [[[mArr sortedArrayUsingSelector:@selector(compare:)] reverseObjectEnumerator] allObjects];
    int l=7;
    int k = 0;
    int y = 1;
    while (l>=0) {
        int m = [mArr[l] intValue];
        k = k + m*y;
        y = 2*y;
        l--;
    
    }
    return k;
}
