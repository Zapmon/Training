//
//  HeaderView.swift
//  Practice
//
//  Created by zapbuild on 23/02/20.
//  Copyright © 2020 zapbuild. All rights reserved.
//

import UIKit

class HeaderFile: UIView {
    
    @IBOutlet var view: UIView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!

//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//        UINib(nibName: "HeaderFile", bundle: nil).instantiate(withOwner: self, options: nil)
//        addSubview(view)
//        view.frame = self.bounds
//    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit(){
     Bundle.main.loadNibNamed("HeaderFile", owner: self, options: nil)
        addSubview(view)
        view.frame = self.bounds
        view.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
    }
    
    @IBAction func buttonaction(_ sender: UIButton) {
    }
 
}
