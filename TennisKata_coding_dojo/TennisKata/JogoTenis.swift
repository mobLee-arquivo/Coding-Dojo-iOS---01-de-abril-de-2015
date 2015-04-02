class JogoTenis {

    var _placarPlayer1 = 0
    var _placarPlayer2 = 0
    
    var pontuacoes = ["Love", "Quinze", "Trinta", "Quarenta"]
    
    func placar() -> String {
        return "\(pontuacoes[_placarPlayer1])x\(pontuacoes[_placarPlayer2])"
    }
    
    func marcouPonto(player : String) {
        if (player == "player1") {
            _placarPlayer1++
        } else if (player == "player2") {
            _placarPlayer2++
        }
    }
}