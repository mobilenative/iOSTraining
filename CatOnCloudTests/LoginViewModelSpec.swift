import Quick
import Nimble

@testable import CatOnCloud

import Foundation

class LoginViewModelSpec: QuickSpec {
    override func spec() {
        describe("LoginViewModel") {
            it("canLogin should not be true") {
                let viewModel = LoginViewModel(userName: "", password: "")
                expect(viewModel.canLogin()).toNot(beTrue())
            }
            
            it("canLogin should be true") {
                let viewModel = LoginViewModel(userName: "GQ", password: "pwd")
                expect(viewModel.canLogin()).to(beTrue())
            }
        }
    }
}
