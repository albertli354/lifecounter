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
    @IBOutlet weak var p5: UILabel!
    @IBOutlet weak var p6: UILabel!
    @IBOutlet weak var p7: UILabel!
    @IBOutlet weak var p8: UILabel!
    @IBOutlet weak var infoForPlayer: UILabel!
    @IBOutlet weak var addPlayer: UIButton!
    @IBOutlet weak var removePlayer: UIButton!
    
    @IBOutlet var scoreInputs: [UITextField]!
    @IBOutlet var playerViews: [UIView]!

    var gameStart = false
    var gameOver = false
    var count = 4
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for element in playerViews[4...7] {
            element.isHidden = true
        }
    }
    
    @IBAction func playerOne(_ sender: UIButton) {
        updateLife(sender, label: p1, name: "1")
    }
    
    @IBAction func playerTwo(_ sender: UIButton) {
        updateLife(sender, label: p2, name: "2")
    }
    
    @IBAction func playerThree(_ sender: UIButton) {
        updateLife(sender, label: p3, name: "3")
    }
    
    @IBAction func playerFour(_ sender: UIButton) {
        updateLife(sender, label: p4, name: "4")
    }
    
    func updateLife(_ sender: UIButton, label: UILabel, name: String) {
        gameStart = true
        label.text = String(Int(sender.currentTitle!)! + Int(label.text!)!)
        
        
        if Int(label.text!)! <= 0 {
            gameOver = true
            infoForPlayer.text = "Player \(name) LOSES!"
        }   
    }

    
    @IBAction func showHistory(_ sender: Any) {
        self.performSegue(withIdentifier: "history", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! HistoryViewController
        vc.historyInfo = "It works!!"
    }
    
    @IBAction func addPlayer(_ sender: Any) {
        if count < 8 {
            playerViews[count].isHidden = false
            count += 1
        }
    }
    
    @IBAction func removePlayer(_ sender: Any) {
        if count > 2 {
            playerViews[count - 1].isHidden = true
            count -= 1
        }
    }
    
    
    
    
}

