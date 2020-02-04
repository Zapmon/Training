//
//  ViewController.swift
//  04 Feb 2020
//
//  Created by zapbuild on 04/02/20.
//  Copyright © 2020 mahesh_zapbuild. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftimageview: UIImageView!
    @IBOutlet weak var rightimageview: UIImageView!
    @IBOutlet weak var leftscorelbl: UILabel!
    @IBOutlet weak var rightscorelbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        
    }
    
    @IBAction func dealbtn(_ sender: Any) {
        let leftnumber = arc4random_uniform(15)
        let rightnumber = arc4random_uniform(15)
        leftimageview.image =  UIImage(named: "card\(leftnumber)")
        rightimageview.image = UIImage(named: "card\(rightnumber)")
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

