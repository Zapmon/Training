//
//  ViewController.swift
//  PinchGesture
//
//  Created by zapbuild on 19/02/20.
//  Copyright © 2020 mahesh_zapbuild. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.isUserInteractionEnabled = true
        let gestureUI = UIPinchGestureRecognizer(target: self, action: #selector(self.pinchGesture))
        imageView.addGestureRecognizer(gestureUI)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func pinchGesture(sender:UIPinchGestureRecognizer) {
        sender.view?.transform = (sender.view?.transform.scaledBy(x: sender.scale, y: sender.scale))!
        sender.scale = 1.0
    }
}

