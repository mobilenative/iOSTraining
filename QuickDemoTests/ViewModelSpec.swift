//
//  ViewModelSpec.swift
//  QuickDemoTests
//
//  Created by Songbai Yan on 16/10/2017.
//  Copyright © 2017 Songbai Yan. All rights reserved.
//

import Nimble
import Quick
@testable import QuickDemo

class ViewModelSpec: QuickSpec {
    override func spec() {
        describe("test") {
            beforeEach {
                print("setup")
            }
            it("should When", closure: {
                let viewModel = ViewModel()
                expect(viewModel.login()).to(equal("success"))
            })
        }
        
        let viewController = ViewController()
        
        describe("tap button") {
            beforeEach {
                // Method #1: Access the view to trigger BananaViewController.viewDidLoad().
                let _ =  viewController.view
            }
            
            it("change label", closure: {
                viewController.button.sendActions(for: .touchUpInside)
                expect(viewController.label.text).to(equal("2"))
            })
        }
    }
}
