//
//  RoDetailViewController.swift
//  Rotash R.O Service
//
//  Created by Dinesh Sharma on 18/04/23.
//

import UIKit

class RoDetailViewController: UIViewController {
    
    var ro: RO?
    
    @IBOutlet weak var btnAddToCart: UIButton!
    @IBOutlet weak var imageview: UIImageView!
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblDesc: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        if let ro = ro {
            imageview.image = UIImage(named: ro.image)
            lblName.text = ro.name
            lblDesc.text = ro.desc
            let formatter = NumberFormatter()
            formatter.numberStyle = .currency
            formatter.locale = Locale.current
            if let price = formatter.string(from: NSNumber(value: ro.price)) {
                btnAddToCart.setTitle("Add \(price) To Cart", for: .normal)
            }
        }
        
    }
    
    @IBAction func btnAddCartTapped(_ sender: Any) {
        if var ro = ro {
            ro.isAddedToCart = true
        }
    }
    
    


}
