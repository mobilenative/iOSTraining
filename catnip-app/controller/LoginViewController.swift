import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var labelLoginError: UILabel!
    
    private let viewModel = LoginViewModel()
    private let loginService = LoginService()
    
    var loginSuccessHandler: ((LoginKey) -> Void)?
    
    @IBAction func loginTouched(_ sender: Any) {
        let name = textFieldName.text!
        let password = textFieldPassword.text!
        
        let credential = LoginCredential(username: name, password: password)
        loginService.login(credential: credential, success: loginSuccess, failure: loginFailure)
    }
    
    private func loginSuccess(loginKey: LoginKey) {
        loginSuccessHandler?(loginKey)
        dismiss(animated: true, completion: nil)
    }
    
    private func loginFailure(error: APIError) {
        viewModel.loginError = error
        DispatchQueue.main.async {
            self.labelLoginError.text = self.viewModel.loginErrorMessage
        }
    }
}
