//
//  ThirdViewController.swift
//  Demo1
//
//  Created by zapbuild on 17/02/20.
//  Copyright © 2020 mahesh_zapbuild. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet var gesture: UISwipeGestureRecognizer!
    @IBOutlet weak var txtlbl: UILabel!
    @IBOutlet weak var segmentedViewControl: UISegmentedControl!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func segmentValueChanged(_ sender: Any) {
        
        switch segmentedViewControl.selectedSegmentIndex {
        case 0:
            txtlbl.text = "First Segment is selected"
        case 1:
            txtlbl.text = "Second Segment is selected"
        case 2:
            txtlbl.text = "Third Segment is selected"
        case 3:
            txtlbl.text = "Fourth Segment is selected"
        default:
            txtlbl.text = "No segment selected"
        }
        
    }
    
}
