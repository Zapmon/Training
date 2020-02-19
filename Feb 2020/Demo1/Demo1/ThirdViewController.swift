//
//  ThirdViewController.swift
//  Demo1
//
//  Created by zapbuild on 17/02/20.
//  Copyright © 2020 mahesh_zapbuild. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var test: UIButton!
    @IBOutlet weak var txtlbl: UILabel!
    @IBOutlet weak var segmentedViewControl: UISegmentedControl!
    var directionswipe = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        segmentedViewControl.insertSegment(withTitle: "Fifth", at: 4, animated: true)
        
        let swipeleft = UISwipeGestureRecognizer(target: self, action: #selector(ThirdViewController.SwipeLeftGesture(gesture:)))
        swipeleft.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(swipeleft)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ThirdViewController.SwipeRightGesture(gesture:)))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(swipeRight)
        
    }
    
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
    

    @objc func SwipeLeftGesture(gesture: UIGestureRecognizer) {
      
        if(directionswipe >= 0 && directionswipe <= 4){
            if(directionswipe == 4){
                
            }else{
                directionswipe += 1
                segmentedViewControl.selectedSegmentIndex = directionswipe
            }
            print(directionswipe)
        }
    }
    @objc func SwipeRightGesture(gesture: UIGestureRecognizer) {
        
        if(directionswipe >= 0 && directionswipe <= 4){
            if(directionswipe == 0){
                
            }
            else{
                directionswipe -= 1
                segmentedViewControl.selectedSegmentIndex = directionswipe
            }
            print(directionswipe)
        }
    }
}


