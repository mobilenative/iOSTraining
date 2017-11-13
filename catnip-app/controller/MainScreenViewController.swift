import UIKit

class MainScreenViewController: UIViewController {
    private let viewModel = MainScreenViewModel()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if viewModel.shouldPerformLogin {
            performLogin()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? LoginViewController {
            vc.loginSuccessHandler = loginSuccess
        }
    }
    
    private func performLogin() {
        performSegue(withIdentifier: "loginSegue", sender: self)
    }
    
    private func loginSuccess(loginKey: LoginKey) {
        viewModel.loginKey = loginKey
        print("Login Key: \(loginKey.key)")
    }
}
