import Foundation

class MainScreenViewModel {
    var loginKey: LoginKey?
    
    var shouldPerformLogin: Bool {
        return loginKey == nil
    }
}
