
class TennisGame {
    
    var score: String!
    var playerOneScore = 0
    var playerTwoScore = 0
    
    init() {
        
    }
    
    func wonPoint(player: String) {
        switch (player) {
        case "player1":
            playerOneScore++
        case "player2":
            playerTwoScore++
        default:
            println("none")
        }
    }
    
    func getScore() -> String {
        if (playerOneScore >= 3 && playerTwoScore >= 3) {
            if (playerOneScore == playerTwoScore) {
                return "Player 1 deuce\nPlayer 2 deuce"
            }
            if (playerTwoScore - playerOneScore >= 2) {
                return "Player 1 loses\nPlayer 2 wins"
            }
            if (playerTwoScore - playerOneScore == 1) {
                return "Player 1\nPlayer 2 advantage"
            }
            if (playerOneScore - playerTwoScore >= 2) {
                return "Player 1 wins\nPlayer 2 loses"
            }
            if (playerOneScore - playerTwoScore == 1) {
                return "Player 1 advantage\nPlayer 2"
            }
        } else if (playerTwoScore > 3) {
            return "Player 1 loses\nPlayer 2 wins"
        } else if (playerOneScore > 3) {
            return "Player 1 wins\nPlayer 2 loses"
        } else {
            return "Player 1 \(scoreForPoint(playerOneScore))\nPlayer 2 \(scoreForPoint(playerTwoScore))"
        }
        return "error code 2356: contact support"
    }
    
    func scoreForPoint(score: Int) -> String {
        switch (score) {
        case 0:
            return "love"
        case 1:
            return "15"
        case 2:
            return "30"
        case 3:
            return "40"
        default:
            return ""
        }
    }
    
}