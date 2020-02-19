//
//  ViewController.swift
//  Demo1
//
//  Created by zapbuild on 17/02/20.
//  Copyright © 2020 mahesh_zapbuild. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var textLabel: UILabel!
    let progress = Progress(totalUnitCount: 10)
    var current: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapgesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.tapGesture(sender:)))
        view.addGestureRecognizer(tapgesture)
        button.addTarget(self, action: #selector(ViewController.tapGesture(sender:)), for: .touchUpInside)
        
        // Do any additional setup after loading the view, typically from a nib.
        progressView.setProgress(0.0, animated: true)
        
        progressView.progress = 0.0
        progress.completedUnitCount = 0
        
        // 2
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (timer) in
            guard self.progress.isFinished == false else {
                timer.invalidate()
                return
            }
            
            // 3
            self.progress.completedUnitCount += 1
            self.progressView.setProgress(Float(self.progress.fractionCompleted), animated: true)
            
            self.textLabel.text = "\(Int(self.progress.fractionCompleted * 100)) %"
        }
        
    }
    @objc func tapGesture(sender: UITapGestureRecognizer){
        view.endEditing(true)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func indexChanged(_ sender: Any) {
        switch  segmentedControl.selectedSegmentIndex {
        case 0:
            textLabel.text = "First Segment is selected"
            break
        case 1:
            textLabel.text = "Second Segment is selected"
            break
        default:
            textLabel.text = "Second Segment is selected"
            break
        }
    }
    
//    @IBAction func nextbtn(_ sender: Any) {
//        let i = current
//        let max = 100
//        
//        // If we still have progress to make.
//        if i <= max {
//            // Compute ratio of 0 to 1 for progress.
//            let ratio = Float(i) / Float(max)
//            // Set progress.
//            progressView.progress = Float(ratio)
//            // Write message.
//            textLabel.text = "Processing \(i) of \(max)..."
//            current = current+1
//        }
//    }
    
    
}

