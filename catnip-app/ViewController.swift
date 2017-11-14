import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    @IBAction func loginTouched(_ sender: Any) {
        let name = textFieldName.text!
        let password = textFieldPassword.text!
        
        let message = "Login: \(name), \(password)"
        print(message)
    }
}
