//
//  ViewController.swift
//  CalculatorClone
//
//  Created by Esraa Gamal on 5/20/20.
//  Copyright © 2020 Esraa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // var value = ""
    private var finishedTyping : Bool = true
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBOutlet weak var ZeroButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        let number = sender.currentTitle!
        
        if finishedTyping{
            displayLabel.text = number
            finishedTyping = false
        }else{
            if sender.currentTitle == "." && displayLabel.text?.firstIndex(of: ".") != nil {
                return
            }
            displayLabel.text = displayLabel.text! + number
        }
        //value += number
        
        
    }
    
    
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        finishedTyping = true
        var num = displayLabel.text!
        //var num = value
        //value = ""
        if let method = sender.currentTitle{
            if method == "+/-" {
                if num[num.startIndex] == "-" {
                    num.remove(at: num.startIndex)
                    displayLabel.text = num
                }else{
                    num.insert("-", at: num.startIndex)
                    displayLabel.text = num
                }
            }
            if method == "AC"
            {
                num = "0"
                displayLabel.text = num
            }
            if method == "%"{
                let value = Double(displayLabel.text!)!
                displayLabel.text = String(value * 0.01)
                num = displayLabel.text!
                
                
            }
        }
    }
}
