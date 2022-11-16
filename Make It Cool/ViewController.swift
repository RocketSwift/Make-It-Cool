import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var enterTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var makeItCoolButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        enterTextField.delegate = self
        
        makeItCoolButton.layer.cornerRadius = 10
        makeItCoolButton.layer.borderWidth = 3
        makeItCoolButton.layer.borderColor = UIColor.black.cgColor
        
        enterTextField.attributedPlaceholder = NSAttributedString(
            string: "Enter your word",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
    }
    
    @IBAction func makeItCoolButtonPressed(_ sender: UIButton) {
        if enterTextField.text != ""{
            enterTextField.placeholder = "Enter your word"
        } else {
            enterTextField.placeholder = "You should enter something"
        }
        enterTextField.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        enterTextField.endEditing(true)
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool{
        if textField.text != ""{
            textField.placeholder = "Enter your word"
            return true
        } else {
            textField.placeholder = "You should enter something"
            return false
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField){
        resultLabel.text = makeItCool(notCoolString: enterTextField.text ?? "")
        enterTextField.text = ""
    }
}
