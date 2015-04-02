
#import <XCTest/XCTest.h>
#import "CDFizzBuzz.h"

@interface CDFizzBuzzTests : XCTestCase

@end

@implementation CDFizzBuzzTests

CDFizzBuzz *game;

- (void) setUp {
    game = [[CDFizzBuzz alloc] init];
}

- (void)testFirstNumberShouldBeOne {
    XCTAssertEqualObjects([game getNextNumber], @"1");
}

- (void)testSecondNumberShouldBeTwo {
    [self incrementaXVezes:1];
    XCTAssertEqualObjects([game getNextNumber], @"2");
}

- (void)testFirstNumberDivisibleByThreeShouldBeFizz {
    [self incrementaXVezes:2];
    XCTAssertEqualObjects([game getNextNumber], @"Fizz");
}

- (void)testSecondNumberDivisibleByThreeShouldBeFizz {
    [self incrementaXVezes:5];
    XCTAssertEqualObjects([game getNextNumber], @"Fizz");
}

- (void)testFirstNumberDivisibleByThreeShouldBeBuzz {
    [self incrementaXVezes:4];
    XCTAssertEqualObjects([game getNextNumber], @"Buzz");
}

- (void)testSecondNumberDivisibleByThreeShouldBeBuzz {
    [self incrementaXVezes:9];
    XCTAssertEqualObjects([game getNextNumber], @"Buzz");
}

- (void)testFirstNumberDivisibleByBothShouldBeBuzz {
    [self incrementaXVezes:14];
    XCTAssertEqualObjects([game getNextNumber], @"FizzBuzz");
}

- (void)testSecondNumberDivisibleByBothShouldBeBuzz {
    [self incrementaXVezes:14];
    XCTAssertEqualObjects([game getNextNumber], @"FizzBuzz");
}

- (void)incrementaXVezes:(int) vezes {
    for (int i = 0; i < vezes; i++) {
        [game getNextNumber];
    }
}

@end
