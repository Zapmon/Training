//
//  SecondViewController.swift
//  JumpToViewController
//
//  Created by zapbuild on 04/03/20.
//  Copyright © 2020 mahesh_zapbuild. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var textlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func secondbuttonpressed(_ sender: UIButton) {
        let thirdVc = self.storyboard?.instantiateViewController(withIdentifier: "FourthViewController") as! FourthViewController
        navigationController?.pushViewController(thirdVc, animated: true)
    }
    
    func dat(first: String){
        textlabel.text = first
    }

}
