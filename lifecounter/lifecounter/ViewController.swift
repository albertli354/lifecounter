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
    var history = ""
    var wholeHistory = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for element in playerViews[4...7] {
            element.isHidden = true
        }

    }
    
    @IBAction func playerOne(_ sender: UIButton) {
        updateLife(sender, label: p1, name: "1", score: scoreInputs[0].text!)
    }
    
    @IBAction func playerTwo(_ sender: UIButton) {
        updateLife(sender, label: p2, name: "2", score: scoreInputs[1].text!)
    }

    @IBAction func playerThree(_ sender: UIButton) {
        updateLife(sender, label: p3, name: "3", score: scoreInputs[2].text!)
    }

    @IBAction func playerFour(_ sender: UIButton) {
        updateLife(sender, label: p4, name: "4", score: scoreInputs[3].text!)
    }
    
    @IBAction func playerFive(_ sender: UIButton) {
        updateLife(sender, label: p5, name: "5", score: scoreInputs[4].text!)
    }
    
    @IBAction func playerSix(_ sender: UIButton) {
        updateLife(sender, label: p6, name: "6", score: scoreInputs[5].text!)
    }
    
    @IBAction func playerSeven(_ sender: UIButton) {
        updateLife(sender, label: p7, name: "7", score: scoreInputs[6].text!)
    }
    
    @IBAction func playerEight(_ sender: UIButton) {
        updateLife(sender, label: p8, name: "8", score: scoreInputs[7].text!)
    }
    
    
    
    func updateLife(_ sender: UIButton, label: UILabel, name: String, score: String) {
        gameStart = true
        addPlayer.isEnabled = false
        removePlayer.isEnabled = false
        
        // update life score
        var numToWord: String
        var num = ""
        if sender.currentTitle == "+" {
            label.text = String(Int(score)! + Int(label.text!)!)
            
            numToWord = toWords(number: Int(score)!)!
        } else if sender.currentTitle == "-" {
            numToWord = toWords(number: Int(score)!)!
            label.text = String(Int(label.text!)! - Int(score)!)
        } else {
            num = String(Array(sender.currentTitle!)[1])
            numToWord = toWords(number: num)!
            label.text = String(Int(sender.currentTitle!)! + Int(label.text!)!)
        }

        if Int(label.text!)! <= 0 {
            gameOver = true
            infoForPlayer.text = "The game is over! Please click reset"
        }
        
        // generate history info test[test.startIndex]
        history = "Player \(name) "
        if sender.currentTitle![sender.currentTitle!.startIndex] == "+" {
            history += "gain "
        } else if sender.currentTitle![sender.currentTitle!.startIndex] == "-" {
            history += "lost "
        }
        history += "\(numToWord) life."
        wholeHistory = history + "\n" + wholeHistory
    }

    
    @IBAction func showHistory(_ sender: Any) {
        self.performSegue(withIdentifier: "history", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! HistoryViewController
        vc.historyInfo = wholeHistory
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
    
    
    @IBAction func reset(_ sender: Any) {
        wholeHistory = ""
        var allScore: [UILabel]!
        allScore = [p1, p2, p3, p4, p5, p6, p7, p8]
        for life in allScore {
            life.text = "20"
        }
        addPlayer.isEnabled = true
        removePlayer.isEnabled = true
        for element in playerViews[4...7] {
            element.isHidden = true
        }
        count = 4
    }
    
    
    
    
    
    
    
    // cited from stockoverflow https://stackoverflow.com/questions/9250433/how-do-i-convert-an-integer-to-the-corresponding-words-in-objective-c
    func toWords<N>(number: N) -> String? {
        let formatter = NumberFormatter()
        formatter.numberStyle = .spellOut
        
        switch number {
        case is Int, is UInt, is Float, is Double:
            return formatter.string(from: number as! NSNumber)
        case is String:
            if let number = Double(number as! String) {
                return formatter.string(from: NSNumber(floatLiteral: number))
            }
        default:
            break
        }
        return nil
    }
    
}

