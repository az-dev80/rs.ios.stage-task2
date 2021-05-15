#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    NSMutableString *res = [[NSMutableString alloc] initWithString: @""];
    if (numbersArray == nil || [numbersArray  isEqual: @[]]){
        return res;
    }
    
    for (int i = 0; i < numbersArray.count; i++){
        if ([numbersArray[i] intValue] > 255 ){
            return @"The numbers in the input array can be in the range from 0 to 255.";
        }
        else if ([numbersArray[i] intValue] < 0){
            return @"Negative numbers are not valid for input.";
        }
        else if (numbersArray.count == 1){
            return [res stringByAppendingFormat:@"%d.0.0.0", [numbersArray[i] intValue]];
        }
        else if (numbersArray.count > 1 && i <4){
            res = [res stringByAppendingFormat:@"%d.", [numbersArray[i] intValue]];
        }
    }
    if (numbersArray.count == 2){
        return [res stringByAppendingFormat:@"%@0.0", res];
    }
    if (numbersArray.count == 3){
        return [res stringByAppendingFormat:@"%@0", res];
    }
    NSString *string = [res substringToIndex:[res length] - 1];
    
    return string;
}

@end
