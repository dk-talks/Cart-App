//
//  HomeViewController.swift
//  Rotash R.O Service
//
//  Created by Dinesh Sharma on 18/04/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    @IBOutlet weak var viewBuyRo: UIView!
    @IBOutlet weak var viewRoService: UIView!
    @IBOutlet weak var viewInfo: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewBuyRo.layer.cornerRadius = 50
        viewRoService.layer.cornerRadius = 50
        viewInfo.layer.cornerRadius = 50
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {
            return
        }
        if touch.view == viewBuyRo {
            print("buy ro is tapped")
            if let roVC = self.storyboard?.instantiateViewController(withIdentifier: "roVC") as? ROViewController {
                navigationController?.pushViewController(roVC, animated: true)
            }
        } else if touch.view == viewRoService {
            print("service ro is tapped")
            if let serviceVC = self.storyboard?.instantiateViewController(withIdentifier: "serviceVC") as? ServiceViewController {
                navigationController?.pushViewController(serviceVC, animated: true)
            }
        } else if touch.view == viewInfo {
            print("app info is tapped")
        }
    }
    

    

}
