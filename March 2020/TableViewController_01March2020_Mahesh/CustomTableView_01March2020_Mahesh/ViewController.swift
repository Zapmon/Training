//
//  ViewController.swift
//  CustomTableView_01March2020_Mahesh
//
//  Created by zapbuild on 02/03/20.
//  Copyright © 2020 mahesh_zapbuild. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableview: UITableView!
    var array1 = ["Mahesh","Jiwan","Kamal"]
    var imgarray = [#imageLiteral(resourceName: "Congrats!"),#imageLiteral(resourceName: "eagles-logo-4031"),#imageLiteral(resourceName: "Congrats!")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.imgview = imgarray[indexPath.row]
        return cell
    }


}

