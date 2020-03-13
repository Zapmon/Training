//
//  ImageViewController.swift
//  ImageViewWithShadow
//
//  Created by zapbuild on 13/03/20.
//  Copyright © 2020 mahesh_zapbuild. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    
    @IBOutlet weak var imageview: UIImageView!
    
    @IBOutlet weak var containerView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageview.layer.cornerRadius = imageview.frame.width / 2
        imageview.clipsToBounds = true
        imageview.layer.shadowColor = UIColor.red.cgColor
        imageview.layer.shadowOffset = CGSize(width: 50.0, height: 50.0)
        //imageview.dropShadow()
        imageview.layer.shadowPath = UIBezierPath(roundedRect: self.imageview.bounds, cornerRadius: imageview.frame.width / 2).cgPath
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
extension UIImageView {
        func dropShadow() {
            self.layer.masksToBounds = false
           // self.layer.shadowColor = UIColor.red.cgColor
            self.layer.shadowOpacity = 0.5
           // self.layer.shadowOffset = CGSize(width: 10, height: 10)
            self.layer.shadowRadius = 1
            //self.layer.shadowPath = UIBezierPath(roundedRect:self., cornerRadius: 10) as! CGPath
            self.layer.shouldRasterize = true
            self.layer.rasterizationScale = UIScreen.main.scale
        }
}
