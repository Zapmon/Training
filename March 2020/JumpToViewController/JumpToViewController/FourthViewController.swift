//
//  FourthViewController.swift
//  JumpToViewController
//
//  Created by zapbuild on 04/03/20.
//  Copyright © 2020 mahesh_zapbuild. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet weak var datatextfield: UITextField!
    @IBOutlet weak var button: UIButton!
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func fourthButton(_ sender: UIButton) {
        let name =  datatextfield.text
        for index in (navigationController?.viewControllers)!
        {
            if index is SecondViewController
            {
                let secondvc = navigationController?.viewControllers[counter] as! SecondViewController
                secondvc.dat(first: name!)
                navigationController?.popToViewController(secondvc, animated: true)
                break
            }
            counter += 1
        }
    }
}
