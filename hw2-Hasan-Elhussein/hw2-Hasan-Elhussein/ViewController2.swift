//
//  ViewController2.swift
//  hw2-Hasan-Elhussein
//
//  Created by Hasan Elhussein on 24.12.2021.
//

import UIKit

// DataDelegate protocol.
protocol DataDelegate{
    func userDidEnterText(text: String)
}

class ViewController2: UIViewController {
    
    // ViewController2 delegate.
    var delegate: DataDelegate? = nil
    
    // IBOutlets
    @IBOutlet weak var closureTxt: UITextField!
    @IBOutlet weak var DelegateTxt: UITextField!
    @IBOutlet weak var NotificationCenterTxt: UITextField!
    
    // Create a closure Object to use for Closure method.
    public var closureMethod: ((String?) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func backBtnTapped(_ sender: Any) {
        // Send text using Closure method:
        closureMethod?(closureTxt.text)
        
        // Post text using NotificationCenter method:
        NotificationCenter.default.post(name: Notification.Name("data"), object: NotificationCenterTxt.text)
        
        // Send text using Delegate method:
        if delegate != nil{
            if DelegateTxt.text != nil{
                let text = DelegateTxt.text
                delegate?.userDidEnterText(text: text!)
            }
        }
        
        // Dismiss ViewController2.
        dismiss(animated: true, completion: nil)
    }
    
}
