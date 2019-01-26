//
//  ViewController.swift
//  lifecounter
//
//  Created by Xiang Li on 1/24/19.
//  Copyright © 2019 Xiang Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = [20, 20, 20, 20]
    @IBOutlet var p1: UILabel!
    @IBOutlet var p2: UILabel!
    @IBOutlet var p3: UILabel!
    @IBOutlet var p4: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func p1PlusOne() {
        p1.text = String("21")
//        if count[0] == 20 {
//            incre()
//        }
    }
    
//    func incre() {
//        p1.text = String("21")
//    }
    
    
    @IBAction func p1PlusFive() {
        
    }
    
    @IBAction func p1MinusOne() {
        
    }
    
    @IBAction func p1MinusFive() {
        
    }
    
    

    
}

