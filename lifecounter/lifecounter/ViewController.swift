//
//  ViewController.swift
//  lifecounter
//
//  Created by Xiang Li on 1/24/19.
//  Copyright © 2019 Xiang Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var p1: UILabel!
    @IBOutlet weak var p2: UILabel!
    @IBOutlet weak var p3: UILabel!
    @IBOutlet weak var p4: UILabel!
    @IBOutlet weak var infoForPlayer: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func playerOne(_ sender: UIButton) {
        update(sender, label: p1, name: "1")
    }
    
    @IBAction func playerTwo(_ sender: UIButton) {
        update(sender, label: p2, name: "2")
    }
    
    @IBAction func playerThree(_ sender: UIButton) {
        update(sender, label: p3, name: "3")
    }
    
    @IBAction func playerFour(_ sender: UIButton) {
        update(sender, label: p4, name: "4")
    }
    
    func update(_ sender: UIButton, label: UILabel, name: String) {
        label.text = String(Int(sender.currentTitle!)! + Int(label.text!)!)
        if Int(label.text!)! <= 0 {
            infoForPlayer.text = "Player \(name) LOSES!"
        }   
    }

    
    
    
}

