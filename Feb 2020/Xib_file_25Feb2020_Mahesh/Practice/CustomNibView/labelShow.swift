//
//  labelShow.swift
//  CustomNibView
//
//  Created by zapbuild on 24/02/20.
//  Copyright © 2020 zapbuild. All rights reserved.
//

import UIKit

@IBDesignable class labelShow: UIView {
    @IBOutlet weak var label: UILabel!
    @IBOutlet var myview: labelShow!
    
    @IBOutlet weak var button: UIButton!
    @IBInspectable var labeltext: String?{
        get{
            return label.text
        }
        set(labelText){
            label.text = labelText
        }
    }
    
  

}
