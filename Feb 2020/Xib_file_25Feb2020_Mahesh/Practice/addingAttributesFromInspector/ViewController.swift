//
//  ViewController.swift
//  addingAttributesFromInspector
//
//  Created by zapbuild on 25/02/20.
//  Copyright © 2020 zapbuild. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewFirst: CustomNib!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        viewFirst.mybutton.addTarget(self, action: #selector(ViewController.printText), for: .touchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func printText()
    {
        viewFirst.mylabel.text = "Pressed key"
    }

}

