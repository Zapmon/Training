//
//  ViewController.swift
//  Demo2
//
//  Created by zapbuild on 18/02/20.
//  Copyright © 2020 mahesh_zapbuild. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var text: UITextField!
    @IBOutlet weak var labelview: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textView()
        button()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func send(_ sender: Any) {
        var message = text.text
        labelview.text = message
        
    }
    
    func textView() {
        let textView = UITextView(frame: CGRect(x: 50.0, y: 100.0, width: 300.0, height: 30.0))
        textView.textAlignment = NSTextAlignment.center
        textView.layer.borderWidth = 1
        self.view.addSubview(textView)
    }
    func button()
    {
        let button = UIButton(frame:CGRect(x: 120, y: 150, width: 100, height: 20))
        button.layer.borderWidth = 1
        button.addTarget(self, action: #selector(ViewController.printtext), for: .touchUpInside)
        button.setTitle("Submit", for: .normal)
        button.backgroundColor = UIColor.white
        button.setTitleColor(UIColor.black, for: .normal)
        self.view.addSubview(button)
    }
    
   @objc func printtext()
    {
        print("Welcome to my PC")
    }

}

