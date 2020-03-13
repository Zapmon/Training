//
//  SecondViewController.swift
//  ViewControllerNavigation
//
//  Created by zapbuild on 13/03/20.
//  Copyright © 2020 mahesh_zapbuild. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    var navigateclass: NavigateViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        if (textfield.text == "")
        {
            
        }
        else{
        navigateclass.dataPassing(data: textfield.text!)
        navigationController?.popViewController(animated: true)
        }
    }
    @IBAction func nextButton(_ sender: UIButton) {
        let nextButton = self.storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
    
        navigationController?.pushViewController(nextButton, animated: true)
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        return resignFirstResponder()
    }
    
    


}
