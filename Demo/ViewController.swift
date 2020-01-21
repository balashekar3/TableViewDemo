//
//  ViewController.swift
//  Demo
//
//  Created by apple on 21/01/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var arr=["balu","Shekar","Vemula","Demo","balu","Shekar","Vemula","Demo"]
    var arr1=["Image1","Image2","Image3","Image4","Image1","Image2","Image3","Image4"]
    var imgArr=[#imageLiteral(resourceName: "img4"),#imageLiteral(resourceName: "img1"),#imageLiteral(resourceName: "img3"),#imageLiteral(resourceName: "img2"),#imageLiteral(resourceName: "img1"),#imageLiteral(resourceName: "img3"),#imageLiteral(resourceName: "img2"),#imageLiteral(resourceName: "NoImage")]


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController:UITableViewDataSource,UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //About only TableView
//        let cell=tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        cell.textLabel?.text=arr[indexPath.row]
//        cell.detailTextLabel?.text=arr1[indexPath.row]
        
        //About TableViewCell
        let cell:CustomTableViewCell=tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.lbl1.text=arr1[indexPath.row]
        cell.lbl2.text=arr[indexPath.row]
        cell.img.image=imgArr[indexPath.row]
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let details:DetailedViewController=storyboard?.instantiateViewController(withIdentifier: "DetailedViewController") as! DetailedViewController
        details.strglbl1=arr1[indexPath.row]
        details.strglbl2=arr[indexPath.row]
        details.stgImg=imgArr[indexPath.row]
        
        navigationController?.pushViewController(details, animated: true)
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
         if editingStyle == .delete{
            arr.remove(at: indexPath.row)
            arr1.remove(at: indexPath.row)
            imgArr.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    
}
