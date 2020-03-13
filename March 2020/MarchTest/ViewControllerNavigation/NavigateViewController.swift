//
//  NavigateViewController.swift
//  ViewControllerNavigation
//
//  Created by zapbuild on 13/03/20.
//  Copyright © 2020 mahesh_zapbuild. All rights reserved.
//

import UIKit

class NavigateViewController: UIViewController {
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func NextButton(_ sender: UIButton) {
        let nextButton = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        navigationController?.pushViewController(nextButton, animated: true)
        nextButton.navigateclass = self
    }
    
    func dataPassing(data: String)
    {
        firstLabel.text = data
    }
    func dataPassingLabel(dataText: String) {
        secondLabel.text = dataText
    }

}
