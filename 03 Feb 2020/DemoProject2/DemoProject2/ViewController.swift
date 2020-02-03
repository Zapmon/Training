//
//  ViewController.swift
//  DemoProject2
//
//  Created by zapbuild on 03/02/20.
//  Copyright © 2020 mahesh_zapbuild. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var text: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func facebookbtn(_ sender: Any) {
        text.text = "Facebook Button clicked"
        text.textColor = UIColor.blue
        print("Facebook Button clicked")
    }
    @IBAction func googlebtn(_ sender: Any) {
        text.text = "Google Button clicked"
        text.textColor = UIColor.white
        print("Google Button clicked")
    }
    @IBAction func emailbtn(_ sender: Any) {
        text.textColor = UIColor.cyan
        text.text = "Email Button clicked"
        print("Email Button clicked")
    }
    
}

