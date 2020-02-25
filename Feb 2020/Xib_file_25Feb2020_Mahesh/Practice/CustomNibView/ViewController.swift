//
//  ViewController.swift
//  CustomNibView
//
//  Created by zapbuild on 24/02/20.
//  Copyright © 2020 zapbuild. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    

    private var aView = Bundle.main.loadNibNamed("labelShow", owner: self, options: nil)?.first as? labelShow
    private let bView = Bundle.main.loadNibNamed("labelShow", owner: self, options: nil)?.first as? labelShow
    private let cView = Bundle.main.loadNibNamed("labelShow", owner: self, options: nil)?.first as? labelShow
   
    @IBOutlet weak var customView: labelShow!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (aView != nil) {
            self.view.addSubview(aView!)
            aView?.frame.origin.y = 30
            aView?.label.textAlignment = .center
            aView?.label.text = "Purchase Apple"
            aView?.button.addTarget(self, action: #selector(ViewController.xibButtonPressed(sender:)), for: .touchUpInside)
            aView?.backgroundColor = UIColor(red: 100.0/255.0, green: 200.0/255.0, blue: 150.0/255.0, alpha: 1.0)
            
        }
        
        if (bView != nil) {
            self.view.addSubview(bView!)
            bView?.label.textAlignment = .center
            bView?.label.text = "Purchase orange"
            bView?.frame.origin.y = 470
            bView?.button.addTarget(self, action: #selector(ViewController.xibButtonPressed2(sender:)), for: .touchUpInside)
            bView?.backgroundColor = UIColor(red: 100.0/255.0, green:150.0/255.0 , blue: 200.0/255.0, alpha: 1.0)
            
        }
        if(cView != nil){
            customView.addSubview(cView!)
            cView?.frame = customView.bounds
            
        }
}
    
    @objc func xibButtonPressed(sender: UIButton){
        print("apple purchased")
        aView?.label.text = "apple purchased"
    }
    
    @objc func xibButtonPressed2(sender: UIButton){
        print("orange purchased")
        bView?.label.text = "orange purchased"
    }
}
