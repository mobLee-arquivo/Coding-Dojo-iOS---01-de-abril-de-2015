
#import "CDFizzBuzz.h"

@implementation CDFizzBuzz

- (NSString *) getNextNumber {
    ++_counter;
    if (_counter%3 == 0 && _counter%5 == 0)
        return @"FizzBuzz";
    if (_counter%3 == 0)
        return @"Fizz";
    if (_counter%5 == 0)
        return @"Buzz";
    return [NSString stringWithFormat:@"%d", _counter];
}

@end