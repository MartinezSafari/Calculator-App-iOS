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
    
    @IBAction func calculate(sender : UIButton){
        num2 = Int(theNumber)!
        
        if operand == PLUS{
            answer = Double(num1 + num2)
        }
        if operand == MINUS{
            answer = Double(num1 - num2)
        }
        if operand == MULTIPLY{
            answer = Double(num1 * num2)
        }
        
        if operand == DIVIDE{
            answer = Double(num1 / num2)
        }
        
        num1 = 0
        num2 = 0
        operand = PLUS
        theNumber = String(answer)
        printNumber()
        
        answer = 0.0
        theNumber = "0"
    }
    
    @IBAction func setOperand(sender : UIButton){
        if sender.tag >= 10 && sender.tag >= 13{
            operand = sender.tag
            saveNum1()
        }
        if sender.tag == -2{
            theNumber = "0"
            printNumber()
        }
    }
    
    func saveNum1(){
        num1 = Int(theNumber)!
        theNumber = "0"
        printNumber()
    }
    
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

