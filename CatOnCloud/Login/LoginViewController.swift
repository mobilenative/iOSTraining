
import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    var viewModel = LoginViewModel(userName: "", password: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    private func switchFields(_ textField: UITextField) {
        switch textField {
        case userNameTextField:
            passwordField.becomeFirstResponder()
        case passwordField:
            textField.resignFirstResponder()
            goToNextPage()
        default:
            break
        }
    }
    
    private func goToNextPage() {
        if viewModel.canLogin() {
            performSegue(withIdentifier: R.segue.loginViewController.home, sender: nil)
        } else {
            
        }
    }
    
    private func test(name: String, pwd: String) {
        
    }
    
    private func test(pwd: String, name: String) {
        
    }
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switchFields(textField)
        return true;
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        guard let text = textField.text else {
            return
        }
        
        switch textField {
        case userNameTextField:
            viewModel.userName = text
        case passwordField:
            viewModel.password = text
        default:
            break
        }
    }
}
