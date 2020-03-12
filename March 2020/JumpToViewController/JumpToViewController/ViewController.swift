//
//  ViewController.swift
//  JumpToViewController
//
//  Created by zapbuild on 04/03/20.
//  Copyright © 2020 mahesh_zapbuild. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        let dataLabel = UILabel(frame: CGRect(x: 150, y: 100, width: 200, height: 30))
        dataLabel.text = "Mahesh"
        dataLabel.textColor = UIColor.brown
        dataLabel.font = UIFont.boldSystemFont(ofSize: 26.4)
        view.addSubview(dataLabel)
    }
    @IBAction func secondNextButton(_ sender: UIButton) {
//       let secondButton =  self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
//        self.navigationController?.pushViewController(secondButton, animated: true)
        
        let thirdButton =  self.storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        self.navigationController?.pushViewController(thirdButton, animated: true)
    }
    
    
}

