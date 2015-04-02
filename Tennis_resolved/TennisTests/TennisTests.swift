import XCTest

class TennisTests: XCTestCase {
    var tennisGame: TennisGame!
    
    override func setUp() {
        tennisGame = TennisGame()
    }
    
    func testPlayerOneScores() {
        playerWonPoints("player1", points: 1)
        XCTAssertEqual(tennisGame.getScore(), "Player 1 15\nPlayer 2 love")
    }
    
    func testPlayerTwoScores() {
        playerWonPoints("player2", points: 1)
        XCTAssertEqual(tennisGame.getScore(), "Player 1 love\nPlayer 2 15")
    }
    
    func testPlayerTwoScoresTwice() {
        playerWonPoints("player2", points: 2)
        XCTAssertEqual(tennisGame.getScore(), "Player 1 love\nPlayer 2 30")
    }
    
    func testPlayerTwoScoresThreeTimes() {
        playerWonPoints("player2", points: 3)
        XCTAssertEqual(tennisGame.getScore(), "Player 1 love\nPlayer 2 40")
    }
    
    func testPlayerTwoWinsTheGame() {
        playerWonPoints("player2", points: 4)
        XCTAssertEqual(tennisGame.getScore(), "Player 1 loses\nPlayer 2 wins")
    }
    
    func testAdvantageIsShownForPlayerOne() {
        playerWonPoints("player2", points: 3)
        playerWonPoints("player1", points: 4)
        XCTAssertEqual(tennisGame.getScore(), "Player 1 advantage\nPlayer 2")
    }
    
    func testDeuceIsShownWhenAtLeastThreePointsHaveBeenScoredByEachPlayerAndTheScoresAreEqual() {
        playerWonPoints("player2", points: 3)
        playerWonPoints("player1", points: 3)
        XCTAssertEqual(tennisGame.getScore(), "Player 1 deuce\nPlayer 2 deuce")
    }
    
    func playerWonPoints(player: String, points: Int) {
        for _ in 0..<points {
            tennisGame.wonPoint(player)
        }
    }
}
