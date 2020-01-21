//
//  DetailedViewController.swift
//  Demo
//
//  Created by apple on 21/01/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class DetailedViewController: UIViewController {
    
    @IBOutlet weak var dlbl1: UILabel!
    @IBOutlet weak var dlbl2: UILabel!
    @IBOutlet weak var dImg: UIImageView!
    
    var strglbl1:String!
    var strglbl2:String!
    var stgImg:UIImage!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        dlbl1.text=strglbl1
        dlbl2.text=strglbl2
        dImg.image=stgImg
        
        dImg.layer.cornerRadius = 15
        dImg.clipsToBounds = true



    }

  
    

   

}
