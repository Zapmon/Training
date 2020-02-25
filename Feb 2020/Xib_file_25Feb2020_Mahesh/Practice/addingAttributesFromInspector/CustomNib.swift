//
//  customNib.swift
//  addingAttributesFromInspector
//
//  Created by zapbuild on 25/02/20.
//  Copyright © 2020 zapbuild. All rights reserved.
//

import UIKit
@IBDesignable
 class CustomNib: UIView {

    
  
    @IBOutlet weak var mybutton: UIButton!
    @IBOutlet weak var mylabel: UILabel!
    @IBOutlet var myView: UIView!
    
   
    @IBInspectable var labeltext: String?{
        get{
            return mylabel.text
        }
        set(LabelText){
            mylabel.text = LabelText
        }
    }
    @IBInspectable var buttontitile: UIColor?{
        get{
            return mybutton.backgroundColor
        }
        set(Buttonclr){
            
            mybutton.backgroundColor = Buttonclr
        }
    }
    @IBInspectable var cornerRadius: CGFloat {
        get{
            return mybutton.layer.cornerRadius
        }
        set(cornerradius){
            mybutton.layer.cornerRadius = cornerradius
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        let bundle = Bundle(for:type(of: self))
        let nib = UINib(nibName: "CustomNib", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        
        view.frame = self.bounds
        view.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        addSubview(view)
        
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        let bundle = Bundle(for:type(of: self))
        let nib = UINib(nibName: "CustomNib", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        
        view.frame = self.bounds
        view.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        addSubview(view)
    }

}

