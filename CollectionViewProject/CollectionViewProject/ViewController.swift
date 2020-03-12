//
//  ViewController.swift
//  CollectionViewProject
//
//  Created by zapbuild on 11/03/20.
//  Copyright © 2020 mahesh_zapbuild. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    var arrlbl = ["img1","img2","img3","img4","img5","img6","img7","img8","img9","img10","img11","img12"]
    
    var arrimg = [#imageLiteral(resourceName: "img3"),#imageLiteral(resourceName: "img1"),#imageLiteral(resourceName: "img2"),#imageLiteral(resourceName: "nature"),#imageLiteral(resourceName: "peacock"),#imageLiteral(resourceName: "tiger"),#imageLiteral(resourceName: "img3"),#imageLiteral(resourceName: "img1"),#imageLiteral(resourceName: "img2"),#imageLiteral(resourceName: "nature"),#imageLiteral(resourceName: "peacock"),#imageLiteral(resourceName: "tiger")]
    
    @IBOutlet weak var collectionview: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrlbl.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:CollectionViewCell =  collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.imageView.image = arrimg[indexPath.row]
        cell.label.text = arrlbl[indexPath.row]
        
        cell.layer.shadowOffset = CGSize(width: 0.0, height: 10.0)
        cell.layer.masksToBounds = true
        cell.layer.shadowOpacity = 1.0
        cell.layer.shadowColor = UIColor.lightGray.cgColor
        cell.layer.shadowRadius = 10.0

        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let imagedetail:ImageViewController = self.storyboard?.instantiateViewController(withIdentifier: "ImageViewController") as! ImageViewController
        imagedetail.mainimg = arrimg[indexPath.row]
        imagedetail.mainlabel = arrlbl[indexPath.row]
        self.navigationController?.pushViewController(imagedetail, animated: true)
    }
    
    @objc func longPressGestures(gesture: UILongPressGestureRecognizer)
    {
        if gesture.state != .ended
        {
            return
        }
        let p = gesture.location(in: collectionview)
        
        if let indexPath = self.collectionview.indexPathForItem(at: p) {
            let cell = collectionview.cellForItem(at: indexPath)
            cell?.backgroundColor = UIColor.blue
        }
        else{
            print("Couldn't find index Path")
        }
    }
}
extension ViewController:UICollectionViewDelegateFlowLayout
{
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: collectionView.bounds.width, height: 44)
//    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 25, bottom: 10, right: 25)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
}
