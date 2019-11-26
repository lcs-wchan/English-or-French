//
//  ViewController.swift
//  English or French
//
//  Created by William Chan on 2019-11-26.
//  Copyright © 2019 WilliamChan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var enteredText: UITextView!
    @IBOutlet weak var outputText: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Analyze(_ sender: Any) {
        // 1. Input collected
        guard let input = enteredText.text, input.count > 0 else {
            outputText.text = "please enter something"
            return
        }
        
        // 2. Process
        var TCount = 0
        var SCount = 0
        // Restet the label and T/S Count
        outputText.text = ""
        TCount = 0
        SCount = 0
        for character in input {
            if character.lowercased() == "t" {
                TCount += 1
            } else if character.lowercased() == "s" {
                SCount += 1
            }
        }
        
        if SCount > TCount {
            outputText.text = "This looks like french"
        } else if SCount < TCount {
            outputText.text = "This looks like english"
        } else if SCount == TCount {
            outputText.text = "This looks like french"
        }
        
        
    }
    
    
    
}
