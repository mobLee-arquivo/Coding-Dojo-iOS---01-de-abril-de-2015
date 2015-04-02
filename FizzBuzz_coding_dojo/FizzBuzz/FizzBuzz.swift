class FizzBuzz {
    
    var contador: Int = 0
    
    func pegueProximoNumero() -> String {
        contador++
        if contador%15 == 0  {
            return "FizzBuzz"
        }
        if contador%3 == 0 {
            return "Fizz"
        }
        if contador%5 == 0 {
            return "Buzz"
        }
        return "\(contador)"
    }
    
}