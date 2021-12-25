//
//  ViewController1.swift
//  hw2-Hasan-Elhussein
//
//  Created by Hasan Elhussein on 24.12.2021.
//

import UIKit

class ViewController1: UIViewController {
   
    // IBOtlets
    @IBOutlet weak var closureLbl: UILabel!
    @IBOutlet weak var DelegateLbl: UILabel!
    @IBOutlet weak var NotificationCenterLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Add a NotificationCenter observer for NotificationCenter method.
        NotificationCenter.default.addObserver(self, selector: #selector(didGetNotification(_:)), name: Notification.Name("data"), object: nil)
        
    }
    
    @objc func didGetNotification(_ Notification: Notification){
        let text = Notification.object as! String?
        NotificationCenterLbl.text = text
    }
    
    // IBActions
    @IBAction func nextBtnTapped(_ sender: Any) {
        // Create a vc object of ViewController2.
        let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        vc.modalPresentationStyle = .fullScreen
        
        // Closure method.
        vc.closureMethod = {text in
            self.closureLbl.text = text
        }
        
        // Present ViewController2.
        present(vc, animated: true)
    }
    
}
