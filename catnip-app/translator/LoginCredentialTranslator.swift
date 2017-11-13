import Foundation

class LoginCredentialTranslator {
    func translate(credential: LoginCredential) -> Data {
        let dict = [
            "username": credential.username,
            "password": credential.password
        ]
        
        return try! JSONSerialization.data(withJSONObject: dict, options: [])
    }
}
