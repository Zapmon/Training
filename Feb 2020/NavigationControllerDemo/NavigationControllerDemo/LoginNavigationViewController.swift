//
//  LoginNavigationViewController.swift
//  NavigationControllerDemo
//
//  Created by zapbuild on 18/02/20.
//  Copyright © 2020 mahesh_zapbuild. All rights reserved.
//

import Foundation
import UIKit
class LoginNavigationViewController:UIViewController
{
    @IBOutlet weak var logintxtfield: UITextField!
    @IBOutlet weak var passwordtxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func LoginTapped(_ sender: Any) {
        
    }
    private func Navigatetomaininterface()
    {
        let mainstoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        guard let mainnaivigationVC = mainstoryboard.instantiateViewController(withIdentifier: "MainNavigationController") as? MainNavigationController else {
            return
        }
        print(mainnaivigationVC.topViewController)
        print(mainnaivigationVC.viewControllers)
        
        if let mainVC = mainnaivigationVC.topViewController as? ViewController
        {
            mainVC.username = logintxtfield.text!
            mainVC.password = passwordtxt.text!
        }
        
        present(mainnaivigationVC, animated: true, completion: nil)
    }
}
