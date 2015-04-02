import XCTest

class TennisKataTests: XCTestCase {
    
    
    var jogo: JogoTenis!
    
    override func setUp() {
        jogo = JogoTenis()
    }
    
    var player1 = "player1"
    var player2 = "player2"
    
    func testPlacarInicial() {
        XCTAssertEqual(jogo.placar(), "LovexLove")
    }
    
    func testPlayer1MarcouPrimeiroPontoDoJogo() {
        jogo.marcouPonto("player1")
        XCTAssertEqual(jogo.placar(), "QuinzexLove")
    }
    
    func testPlayer2MarcouPrimeiroPontoDoJogo() {
        jogo.marcouPonto("player2")
        XCTAssertEqual(jogo.placar(), "LovexQuinze")
    }
    
    func testDoisJogadoresMarcaram1Ponto() {
        jogo.marcouPonto(player1)
        jogo.marcouPonto(player2)
        
        XCTAssertEqual(jogo.placar(), "QuinzexQuinze")
        
    }
    
    func testPlayer1MarcouDoisPontos(){
        jogo.marcouPonto(player1)
        jogo.marcouPonto(player1)
        XCTAssertEqual(jogo.placar(), "TrintaxLove")
    }

    func testPlayer1MarcouTresPontos(){
        jogo.marcouPonto(player1)
        jogo.marcouPonto(player1)
        jogo.marcouPonto(player1)
        XCTAssertEqual(jogo.placar() , "QuarentaxLove")
    }
    
    func testPlayer2MarcouTresPontos() {
        jogo.marcouPonto(player2)
        jogo.marcouPonto(player2)
        jogo.marcouPonto(player2)
        XCTAssertEqual(jogo.placar() , "LovexQuarenta")
    }
    
    func testEmpateDeuce() {
        jogo.marcouPonto(player1)
        jogo.marcouPonto(player1)
        jogo.marcouPonto(player1)
        jogo.marcouPonto(player2)
        jogo.marcouPonto(player2)
        jogo.marcouPonto(player2)
        XCTAssertEqual(jogo.placar() , "Deuce")
        
    }
    
    
    
    
}
