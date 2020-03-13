//
//  ViewController.swift
//  MarchTest
//
//  Created by zapbuild on 13/03/20.
//  Copyright © 2020 mahesh_zapbuild. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var rateLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var resultLabel: UILabel!
    var principleValue = 0
    var rate = 0
    var time = 0
    var simpleInterest = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapgestureReco(sender:)))
        view.addGestureRecognizer(tapGesture)
        
        timeLabel.text = "\(Int(stepper.value))"
        rateLabel.text = "\(Int(slider.value))"
    }
    
    @objc func tapgestureReco(sender: UITapGestureRecognizer){
        SimpleInterest()
        view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
       
        timeLabel.text = String(Int(sender.value))
        SimpleInterest()
        
    }
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        rateLabel.text = "\(Int(sender.value))"
        SimpleInterest()
    }
    
    func SimpleInterest()
    {
        simpleInterest = (Int(textfield.text!)! * (Int(rateLabel.text!)! * Int(timeLabel.text!)!)) / 100
        resultLabel.text = String(simpleInterest + (Int(textfield.text!)!))
    }
}

