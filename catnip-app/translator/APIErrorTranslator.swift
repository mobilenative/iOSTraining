import Foundation

class APIErrorTranslator {
    func translate(data: Data?, response: URLResponse?, error: Error?) -> APIError {
        let message = data.flatMap(translateErrorMessage) ?? error?.localizedDescription ?? "Unknown error"
        return APIError(message: message)
    }
    
    private func translateErrorMessage(data: Data) -> String? {
        let dataJson = try? JSONSerialization.jsonObject(with: data, options: [])
        let dict = dataJson as? [String: Any]
        return dict?["message"] as? String
    }
}
