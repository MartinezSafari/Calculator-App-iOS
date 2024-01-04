//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Martinez on 2024/01/04.
//

import UIKit

class ViewController: UIViewController {
    
    let PLUS = 10
    let MINUS = 11
    let MULTIPLY = 12
    let DIVIDE = 13
    
    
    @IBOutlet var lblText : UILabel!
    
    var num1 :NSNumber = 0
    var num2 :NSNumber = 0
    var operand :NSNumber = 0
    var answer :Double = 0.0
    
    var theNumber :String = "0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        printNumber()
    }
    
    func printNumber()  {
        lblText.text = theNumber
    }
    
    @IBAction func pressNum(sender : UIButton){
        if sender.tag >= 0 && sender.tag <= 9{
            theNumber += String(sender.tag)
            printNumber()
        }
    }


}

