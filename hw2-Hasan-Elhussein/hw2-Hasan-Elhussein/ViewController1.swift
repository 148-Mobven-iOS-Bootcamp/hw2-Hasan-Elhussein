//
//  ViewController1.swift
//  hw2-Hasan-Elhussein
//
//  Created by Hasan Elhussein on 24.12.2021.
//

import UIKit

class ViewController1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

// Math operations (+ - * /)
func sum(_ num1: Int, _ num2: Int) -> Int{
    return num1 + num2
}

func multiply(_ num1: Int, _ num2: Int) -> Int{
    return num1 * num2
}

func subtract(_ num1: Int, _ num2: Int) -> Int{
    return num1 - num2
}

func divide(_ num1: Int, _ num2: Int) -> Int{
    return num1 / num2
}

// This function uses a closure for the calculation operation
func calculate(_ num1: Int, operand: (Int, Int) -> Int, _ num2: Int) -> Int{
    return operand(num1, num2)
}
