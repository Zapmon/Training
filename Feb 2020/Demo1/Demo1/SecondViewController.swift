//
//  SecondViewController.swift
//  Demo1
//
//  Created by zapbuild on 17/02/20.
//  Copyright © 2020 mahesh_zapbuild. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var txtLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var switchbtn: UISwitch!
    @IBOutlet weak var stateBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        slider.minimumValue = 0
        slider.maximumValue = 100
        switchbtn.addTarget(self, action: #selector(stateChanged), for: .valueChanged)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func sliderFunction(_ sender: Any) {
        let roundedValue = round(slider.value)
        
        txtLabel.text = "\(Int(roundedValue))%"
    }
    @IBAction func btnClicked(_ sender: Any) {
        if switchbtn.isOn
        {
            statusLabel.text = "Switch is OFF"
            switchbtn.setOn(false, animated: true)
        }
        else
        {
            statusLabel.text = "Switch is ON"
            switchbtn.setOn(true, animated: true)
        }
        
    }
    @objc func stateChanged(switchState: UISwitch) {
        if switchState.isOn {
            statusLabel.text = "The Switch is On"
        } else {
            statusLabel.text = "The Switch is Off"
        }
    }
    
}
