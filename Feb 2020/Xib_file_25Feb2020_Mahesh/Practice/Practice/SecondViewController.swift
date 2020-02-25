//
//  SecondViewController.swift
//  Practice
//
//  Created by zapbuild on 24/02/20.
//  Copyright © 2020 zapbuild. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var secondHeaderFile: HeaderFile!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondHeaderFile.label.text = "Second Header"
        secondHeaderFile.button.addTarget(self, action: #selector(SecondViewController.buttonPressed(sender:)), for: .touchUpInside)
        
    }

    @objc func buttonPressed(sender: UIButton){
        secondHeaderFile.label.text = "Second label pressed"
    }
}
