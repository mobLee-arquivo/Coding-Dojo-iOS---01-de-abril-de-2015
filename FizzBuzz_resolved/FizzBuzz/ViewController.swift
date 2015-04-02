
import UIKit

class ViewController: UIViewController {
    
    var game: FizzBuzz!

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var listLabel: UILabel!
    
    @IBAction func generateListButton(sender: UIButton) {
        game = FizzBuzz()
        listLabel.text = ""
        for _ in 0..<textField.text!.toInt()! {
            listLabel.text =  "\(listLabel.text!)\n\(game.getNextNumber())"
        }
    }
}