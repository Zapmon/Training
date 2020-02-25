//
//  LabelButtonNib.swift
//  addingResponder
//
//  Created by zapbuild on 24/02/20.
//  Copyright © 2020 zapbuild. All rights reserved.
//

import UIKit

@IBDesignable class LabelButtonNib: UIView {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet var nibView: UIView!
    var view: UIView!

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setup() {
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    
    func loadViewFromNib() -> UIView {
        let bundle = Bundle(for:type(of: self))
        let nib = UINib(nibName: "LabelButtonNib", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        
        return view
    }
    
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//        UINib(nibName: "LabelButtonNib", bundle: nil).instantiate(withOwner: self, options: nil)
//        addSubview(nibView)
//        nibView.frame = self.bounds
//    }
//
//    @IBAction func buttonpressed(_ sender: UIButton) {
//        label.text = "pressed"
//    }
}
