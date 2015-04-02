
import XCTest

class FizzBuzzTests: XCTestCase {
    
    var game: FizzBuzz!
    
    override func setUp() {
        game = FizzBuzz()
    }
    
    func testFirstNumberShouldBeOne() {
        XCTAssertEqual(game.getNextNumber(), "1")
    }
    
    func testSecondNumberShouldBeTwo() {
        incrementGameBy(1)
        XCTAssertEqual(game.getNextNumber(), "2")
    }
    
    func testFirstNumberDivisibleByThreeShouldBeFizz() {
        incrementGameBy(2)
        XCTAssertEqual(game.getNextNumber(), "Fizz")
    }
    
    func testSecondNumberDivisibleByThreeShouldBeFizz() {
        incrementGameBy(5)
        XCTAssertEqual(game.getNextNumber(), "Fizz")
    }
    
    func testFirstNumberDivisibleByThreeShouldBeBuzz() {
        incrementGameBy(4)
        XCTAssertEqual(game.getNextNumber(), "Buzz")
    }
    
    func testSecondNumberDivisibleByThreeShouldBeBuzz() {
        incrementGameBy(9)
        XCTAssertEqual(game.getNextNumber(), "Buzz")
    }
    
    func testFirstNumberDivisibleByBothShouldBeBuzz() {
        incrementGameBy(14)
        XCTAssertEqual(game.getNextNumber(), "FizzBuzz")
    }
    
    func testSecondNumberDivisibleByBothShouldBeBuzz() {
        incrementGameBy(29)
        XCTAssertEqual(game.getNextNumber(), "FizzBuzz")
    }
    
    func incrementGameBy(times: Int) {
        for _ in 0..<times {
            game.getNextNumber()
        }
    }
    
    
}
