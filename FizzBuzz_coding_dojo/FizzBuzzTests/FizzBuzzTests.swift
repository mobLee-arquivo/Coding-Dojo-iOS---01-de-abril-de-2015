import XCTest

class FizzBuzzTests: XCTestCase {
    
    var jogo: FizzBuzz!
    
    override func setUp() {
       jogo = FizzBuzz()
    }

    func testPrimeiroNumeroEhUm() {
        XCTAssertEqual(jogo.pegueProximoNumero(), "1")
    }
    
    func testSegundoNumeroEhDois() {
        pegaNumeroAteh(1)
        XCTAssertEqual(jogo.pegueProximoNumero(), "2")
    }
    
    func testTerceiroNumeroEhFizz() {
        pegaNumeroAteh(2)
        XCTAssertEqual(jogo.pegueProximoNumero(), "Fizz")
    }
    
    func testSextoNumeroEhFizz() {
        pegaNumeroAteh(5)
        XCTAssertEqual(jogo.pegueProximoNumero(), "Fizz")
    }
    
    func testQuintoNumeroEhBuzz() {
        pegaNumeroAteh(4)
        XCTAssertEqual(jogo.pegueProximoNumero(), "Buzz")
    }
    
    func testDecimoNumeroEhBuzz() {
        pegaNumeroAteh(9)
        XCTAssertEqual(jogo.pegueProximoNumero(), "Buzz")
    }
    
    func testDecimoQuintoNumeroEhFizzBuzz() {
        pegaNumeroAteh(14)
        XCTAssertEqual(jogo.pegueProximoNumero(), "FizzBuzz")
    }
    
    func testTrigesimoNumeroEhFizzBuzz() {
        pegaNumeroAteh(29)
        XCTAssertEqual(jogo.pegueProximoNumero(), "FizzBuzz")
    }
    
    
    func pegaNumeroAteh(quantidade: Int) {
        for _ in 0..<quantidade {
           jogo.pegueProximoNumero()
        }
    }
    
    
    
    
}
