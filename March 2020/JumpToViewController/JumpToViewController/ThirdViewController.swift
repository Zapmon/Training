//
//  ThirdViewController.swift
//  JumpToViewController
//
//  Created by zapbuild on 04/03/20.
//  Copyright © 2020 mahesh_zapbuild. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func thirdButtonpresserd(_ sender: UIButton) {
        let fourthvc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        navigationController?.pushViewController(fourthvc, animated: true)
    }
    func data(data:String)
    {
        textField.text = data
    }

}
