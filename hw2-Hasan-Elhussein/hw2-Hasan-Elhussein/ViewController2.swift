//
//  ViewController2.swift
//  hw2-Hasan-Elhussein
//
//  Created by Hasan Elhussein on 24.12.2021.
//

import UIKit

class ViewController2: UIViewController {
    
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
        // Closure method:
        closureMethod?(closureTxt.text)
        
        // Post the text for NotificationCenter method.
        NotificationCenter.default.post(name: Notification.Name("data"), object: NotificationCenterTxt.text)
        
        // Dismiss ViewController2.
        dismiss(animated: true, completion: nil)
    }
    
}
