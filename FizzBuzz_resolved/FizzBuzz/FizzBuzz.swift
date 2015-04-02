
class FizzBuzz {
    
    var counter: Int = 0
    
    func getNextNumber() -> String {
        ++counter
        if counter%3 == 0 && counter%5 == 0 {
            return "FizzBuzz"
        }
        if counter%3 == 0 {
            return "Fizz"
        }
        if counter%5 == 0 {
            return "Buzz"
        }
        return "\(counter)"
    }
}