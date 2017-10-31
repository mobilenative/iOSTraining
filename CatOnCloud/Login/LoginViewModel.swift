
import Foundation

struct LoginViewModel {
    var userName: String
    var password: String
    
    func canLogin() -> Bool {
        return !userName.isEmpty && !password.isEmpty
    }
}
