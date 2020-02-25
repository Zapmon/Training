//
//  ViewController.swift
//  Practice
//
//  Created by zapbuild on 20/02/20.
//  Copyright © 2020 zapbuild. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var headerfile: HeaderFile!
    
   
    @IBOutlet weak var reuseNib: HeaderFile!
    var labelInput = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        headerfile.label.text = "First Header"
        reuseNib.view.backgroundColor = UIColor.blue
        headerfile.button.addTarget(self, action: #selector(ViewController.buttonPressed(sender:)), for: .touchUpInside)
        reuseNib.button.addTarget(self, action: #selector(ViewController.reuseNibButtonPressed(sender:)), for: .touchUpInside)
        
    }

    @objc func buttonPressed(sender: UIButton){
        headerfile.label.text = "first Button pressed"
    }
    @objc func reuseNibButtonPressed(sender: UIButton){
        reuseNib.label.text = "reuse Button pressed"
    }
}

