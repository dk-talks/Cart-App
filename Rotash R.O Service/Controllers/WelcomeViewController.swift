//
//  ViewController.swift
//  Rotash R.O Service
//
//  Created by Dinesh Sharma on 18/04/23.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    let defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(defaults.bool(forKey: "isProceed")) {
            if let homeVC = storyboard?.instantiateViewController(withIdentifier: "homeVC") as? HomeViewController {
                
                navigationController?.pushViewController(homeVC, animated: false)
                
            }
        }
        
    }
    
    

    @IBAction func btnProceedTapped(_ sender: Any) {
        defaults.set(true, forKey: "isProceed")
        
    }
    
}

