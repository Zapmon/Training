//
//  HeaderFooterCollectionReusableView.swift
//  CollectionViewProject
//
//  Created by zapbuild on 12/03/20.
//  Copyright © 2020 mahesh_zapbuild. All rights reserved.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView {

    @IBOutlet weak var headerLabel: UILabel!
   
    
    func headerText(headerLabel: String){
        self.headerLabel.text = headerLabel
    }
   
}
