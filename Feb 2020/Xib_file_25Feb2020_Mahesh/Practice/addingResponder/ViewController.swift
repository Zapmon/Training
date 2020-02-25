//
//  ViewController.swift
//  addingResponder
//
//  Created by zapbuild on 24/02/20.
//  Copyright © 2020 zapbuild. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var secondNib: LabelButtonNib!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        secondNib.button.addTarget(self, action: #selector(ViewController.buttonPressed(sender:)), for: .touchUpInside)
        
    }

    @objc private func buttonPressed(sender: UIButton){
        
        secondNib.button.setTitle("second nib button pressed", for: .normal)
        secondNib.label.text = "second nib button pressed"
        
    }
}

