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
