//
//  FooterCollectionReusableView.swift
//  CollectionViewProject
//
//  Created by zapbuild on 12/03/20.
//  Copyright © 2020 mahesh_zapbuild. All rights reserved.
//

import UIKit

class FooterCollectionReusableView: UICollectionReusableView {
         @IBOutlet weak var footerLabel: UILabel!
    
    func footerlabel(footerLabel: String){
        self.footerLabel.text = footerLabel
    }
}
