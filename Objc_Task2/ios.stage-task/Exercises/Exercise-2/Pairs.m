#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    if (array.count <2){
        return 0;
    }
    NSInteger l = 0;
    for (int i=0; i <array.count; i++) {
        int y = array[i].intValue;
        for (int k = i+1; k <array.count; k++){
            if (array[k].intValue == y+ number.intValue){
                l++;
            }
        }
        
        //int y = array[i].intValue + number.intValue;
        //NSNumber *x = [NSNumber numberWithInt:y];
        //if ([array containsObject: x]) {
        //    l++;
    //}
    }
    return l;
}

@end
