//
//  ViewController1.swift
//  hw2-Hasan-Elhussein
//
//  Created by Hasan Elhussein on 24.12.2021.
//

import UIKit

class ViewController1: UIViewController {
    
    @IBOutlet weak var num1Txt: UITextField!
    @IBOutlet weak var num2Txt: UITextField!
    @IBOutlet weak var resultTxt: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addBtnTapped(_ sender: Any) {
        if let num1 = Int(num1Txt.text!), let num2 = Int(num2Txt.text!){
            resultTxt.text = String(calculate(num1, operand: add, num2))
        }
    }
    @IBAction func subBtnTapped(_ sender: Any) {
        if let num1 = Int(num1Txt.text!), let num2 = Int(num2Txt.text!){
            resultTxt.text = String(calculate(num1, operand: subtract, num2))
        }
    }
    @IBAction func mulBtnTapped(_ sender: Any) {
        if let num1 = Int(num1Txt.text!), let num2 = Int(num2Txt.text!){
            resultTxt.text = String(calculate(num1, operand: multiply, num2))
        }
    }
    @IBAction func divBtnTapped(_ sender: Any) {
        if let num1 = Int(num1Txt.text!), let num2 = Int(num2Txt.text!){
            resultTxt.text = String(calculate(num1, operand: divide, num2))
        }
    }
    
}

// Math operations (+ - * /)
func add(_ num1: Int, _ num2: Int) -> Int{
    return num1 + num2
}

func subtract(_ num1: Int, _ num2: Int) -> Int{
    return num1 - num2
}

func multiply(_ num1: Int, _ num2: Int) -> Int{
    return num1 * num2
}

func divide(_ num1: Int, _ num2: Int) -> Int{
    if num2 == 0 { return 0 }
    return num1 / num2
}

// This function uses a closure for the calculation operation
func calculate(_ num1: Int, operand: (Int, Int) -> Int, _ num2: Int) -> Int{
    return operand(num1, num2)
}
