//
//  ViewController.swift
//  QuickDemo
//
//  Created by Songbai Yan on 14/10/2017.
//  Copyright © 2017 Songbai Yan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // viewDidLoad - viewWillAppear - viewDidAppear -
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        
    }
    
    var label:UILabel!
    var button:UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label = UILabel(frame: CGRect(x: 10, y: 100, width: 200, height: 20))
        label.text = "1"
        self.view.addSubview(label)
        
        button = UIButton(type: .system)
        button.frame = CGRect(x: 100, y: 200, width: 100, height: 20)
        button.setTitle("tap", for: .normal)
        button.addTarget(self, action: #selector(ViewController.tapped(_:)), for: .touchUpInside)
        self.view.addSubview(button)
    }
    
    @objc func tapped(_ sender: UIButton){
        label.text = "2"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

