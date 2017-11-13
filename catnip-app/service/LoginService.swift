import Foundation

class LoginService {
    private let urlSessionConfiguration = URLSessionConfiguration.default
    private let urlLogin = URL(string: "http://localhost:8080/catnip/login/")!.absoluteURL
    private let loginCredentialTranslator = LoginCredentialTranslator()
    private let loginKeyTranslator = LoginKeyTranslator()
    private let apiErrorTranslator = APIErrorTranslator()
    
    func login(credential: LoginCredential, success: @escaping ((LoginKey) -> Void), failure: @escaping ((APIError) -> Void)) {
        performLogin(credential: credential) { (data, response, error) in
            if let key = data.flatMap(self.loginKeyTranslator.translate) {
                success(key)
            }
            else {
                let err = self.apiErrorTranslator.translate(data: data, response: response, error: error)
                failure(err)
            }
        }
    }
    
    private func performLogin(credential: LoginCredential, handler: @escaping (Data?, URLResponse?, Error?) -> Void) {
        var request = URLRequest(url: urlLogin)
        request.httpMethod = "POST"
        request.httpBody = loginCredentialTranslator.translate(credential: credential)
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let session = URLSession(configuration: urlSessionConfiguration)
        let task = session.dataTask(with: request, completionHandler: handler)
        task.resume()
    }
}
