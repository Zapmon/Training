//
//  ThirdViewController.swift
//  ViewControllerNavigation
//
//  Created by zapbuild on 13/03/20.
//  Copyright © 2020 mahesh_zapbuild. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    var mainview : NavigateViewController!

    @IBOutlet weak var textField: UITextField!
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    @IBAction func homeButton(_ sender: UIButton) {
        let data = textField.text
        for i in (navigationController?.viewControllers)!
        {
            if i is NavigateViewController
            {
                let sendData = navigationController?.viewControllers[counter] as! NavigateViewController
                sendData.dataPassingLabel(dataText: data!)
                navigationController?.popToViewController(sendData, animated: true)
            }
            counter = counter + 1
        }
    }
}
