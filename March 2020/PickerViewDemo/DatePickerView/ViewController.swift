//
//  DatePickerViewController.swift
//  DatePickerView
//
//  Created by zapbuild on 16/03/20.
//  Copyright © 2020 mahesh_zapbuild. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    let datePicker = UIDatePicker()
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datePickerView()
        textField.textAlignment = .center
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func datePickerView(){
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        let done = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action:#selector(donePressed))
        toolbar.setItems([done], animated: true)
        textField.inputAccessoryView = toolbar
        textField.inputView = datePicker
        datePicker.datePickerMode = .date
        
    }
    
    @objc func donePressed()
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/mm/yyyy"
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        textField.text = dateFormatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
}
