//
//  NewViewController.swift
//  StackView
//
//  Created by zapbuild on 13/03/20.
//  Copyright © 2020 mahesh_zapbuild. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var switchView: UISwitch!
    @IBOutlet weak var mobileNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if switchView.isOn {
            mobileNumber.isHidden = false
        }
        else
        {
            mobileNumber.isHidden = true
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func switchChange(_ sender: UISwitch) {
        if sender.isOn
        {
            mobileNumber.isHidden = false
        }
        else
        {
            mobileNumber.isHidden = true
        }
    }
    
    
}
