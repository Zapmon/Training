//
//  ImageViewController.swift
//  CollectionViewProject
//
//  Created by zapbuild on 12/03/20.
//  Copyright © 2020 mahesh_zapbuild. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    @IBOutlet weak var iimg: UIImageView!
    @IBOutlet weak var ilbl: UILabel!
    var mainimg:UIImage!
    var mainlabel:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        iimg.image = mainimg
        ilbl.text = mainlabel
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

}
