//
//  CartViewController.swift
//  Rotash R.O Service
//
//  Created by Dinesh Sharma on 18/04/23.
//

import UIKit

class CartViewController: UIViewController {
    
    let formatter = NumberFormatter()
    
    var totalPrice: Int = 0
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var lblTotalPrice: UILabel!
    
    var cartItems: [RO] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        formatter.numberStyle = .currency
        formatter.locale = Locale.current
        
        tableView.delegate = self
        tableView.dataSource = self

        for item in RO.allRO {
            if item.isAddedToCart {
                cartItems.append(item)
                totalPrice += item.price
            }
        }
        if let price = formatter.string(from: NSNumber(value: totalPrice)) {
            lblTotalPrice.text = "Total: \(price)"
        }

    }
    

    
    
    
    @IBAction func btnDeleteItemTapped(_ sender: UIButton) {
        
        let cellTag = sender.tag
        let indexPath = IndexPath(row: cellTag, section: 0)
        let id = cartItems[indexPath.row].id
        for item in RO.allRO {
            if item.id == id {
                item.isAddedToCart = false
                totalPrice -= item.price
            }
        }
        if let price = formatter.string(from: NSNumber(value: totalPrice)) {
            lblTotalPrice.text = "Total: \(price)"
        }
        
        cartItems.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .fade)
        
    }
    
    @IBAction func btnProceedTapped(_ sender: Any) {
        
    }
    
    

}

extension CartViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Configure and return your custom cell here
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CartTableViewCell
        
        cell.lblName.text = cartItems[indexPath.row].name
        cell.imgView.image = UIImage(named: cartItems[indexPath.row].image)
        cell.lblPrice.text = formatter.string(from: NSNumber(value: cartItems[indexPath.row].price))
        cell.tag = indexPath.row
//        cell.btnDeleteItem.addTarget(self, action: #selector(deleteCartItem), for: .touchUpInside)
        
        
        return cell
    }
    
}

extension CartViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
}
