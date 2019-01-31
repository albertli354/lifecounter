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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
