//
//  PickerViewController.swift
//  CustomPickerView
//
//  Created by zapbuild on 16/03/20.
//  Copyright © 2020 mahesh_zapbuild. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
   
    
    var hours = [00,01,02,03,04,05,06,07,08,09,10,11]
    var minutes = [00,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59]
    
    var seconds = [00,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59]
    
    var ampm = ["AM","PM"]
    var hourLabelText = "0"
    var minutesLabelText = "0"
    var secondsLabelText = "0"
    var ampmlabel = "AM"
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var timePickerView: UIPickerView!
    
    var hr : Int = 0
    var min : Int = 0
    var sec : Int = 0
    var counter = 0
    override func viewDidLoad() {
        
        super.viewDidLoad()
        timeLabel.text = hourLabelText + " : " + minutesLabelText + " : " + secondsLabelText + " " + ampmlabel
        let labelhours = UILabel(frame: CGRect(x: 70, y: 130, width: 40, height: 30))
        labelhours.text = "Hrs"
        timePickerView.addSubview(labelhours)
        
        let minutesLabel = UILabel(frame: CGRect(x: 150, y: 130, width: 40, height: 30))
        minutesLabel.text = "Min"
        timePickerView.addSubview(minutesLabel)
        
        let labelsecond = UILabel(frame: CGRect(x: 230, y: 130, width: 40, height: 30))
        labelsecond.text = "Sec"
        timePickerView.addSubview(labelsecond)
        
        while(counter <= 15)
        {
            hours.append(contentsOf: hours)
            counter += 1
        }
        
        while(counter <= 15)
        {
            minutes.append(contentsOf: minutes)
            counter += 1
        }
        
        while(counter <= 15)
        {
            seconds.append(contentsOf: seconds)
            counter += 1
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 4
    }
    override func viewWillAppear(_ animated: Bool) {
        print("Will Appeared")
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        switch component {
        case 0:
            return hours.count
        case 1:
            return minutes.count
        case 2:
            return seconds.count
        case 3:
            return ampm.count
        default:
            return 0
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        switch component {
        case 0:
            return "\(hours[row])"
        case 1:
            return "\(minutes[row])"
        case 2:
            return "\(seconds[row])"
        case 3:
            return "\(ampm[row])"
        default:
            return ""
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        switch component {
        case 0:
            hourLabelText = String(hours[row])
        case 1:
            minutesLabelText = String(minutes[row])
        case 2:
            secondsLabelText = String(seconds[row])
        case 3:
            ampmlabel = String(ampm[row])
        default:
            print("default")
        }
        timeLabel.text = hourLabelText + " : " + minutesLabelText + " : " + secondsLabelText + " " + ampmlabel
    }
    
}
