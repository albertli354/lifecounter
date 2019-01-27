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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func playerOne(_ sender: UIButton) {
        update(sender, label: p1)
    }
    
    @IBAction func playerTwo(_ sender: UIButton) {
        update(sender, label: p2)
    }
    
    @IBAction func playerThree(_ sender: UIButton) {
        update(sender, label: p3)
    }
    
    @IBAction func playerFour(_ sender: UIButton) {
        update(sender, label: p4)
    }
    
    func update(_ sender: UIButton, label: UILabel) {
        if sender.currentTitle == "+1" {
            label.text = String(Int(label.text!)! + 1)
        } else if sender.currentTitle == "-1" {
            label.text = String(Int(label.text!)! - 1)
        } else if sender.currentTitle == "+5" {
            label.text = String(Int(label.text!)! + 5)
        } else if sender.currentTitle == "-5" {
            label.text = String(Int(label.text!)! - 5)
        }
    }

    
}

