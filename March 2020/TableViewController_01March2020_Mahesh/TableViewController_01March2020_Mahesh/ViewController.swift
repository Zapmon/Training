//
//  ViewController.swift
//  TableViewController_01March2020_Mahesh
//
//  Created by zapbuild on 02/03/20.
//  Copyright © 2020 mahesh_zapbuild. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    var name = ["Name","Mahesh","Rohit","Vicky"]
    var detail = ["Class Detail","MCA","M.tech","MBA"]

    @IBOutlet weak var firstTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstTableView.delegate = self
        firstTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tablecell = tableView.dequeueReusableCell(withIdentifier: "cell")
        tablecell?.textLabel?.text = name[indexPath.row]
        tablecell?.detailTextLabel?.text = detail[indexPath.row]
        return tablecell!
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
            if indexPath.row == 0
            {
                
            }
            else if editingStyle == .delete
            {
                    name.remove(at: indexPath.row)
                    tableView.deleteRows(at: [indexPath], with: .top)
            }
    
    }
}

