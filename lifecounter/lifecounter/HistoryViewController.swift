//
//  HistoryViewController.swift
//  lifecounter
//
//  Created by Xiang Li on 1/30/19.
//  Copyright © 2019 Xiang Li. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {

    
    @IBOutlet weak var historyText: UITextView!
    var historyInfo = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        historyText.text = historyInfo
    }
    
    
    @IBAction func closePage(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
