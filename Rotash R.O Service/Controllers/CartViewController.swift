//
//  CartViewController.swift
//  Rotash R.O Service
//
//  Created by Dinesh Sharma on 18/04/23.
//

import UIKit

class CartViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var cartItems: [RO] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

        for item in RO.allRO {
            if item.isAddedToCart {
                cartItems.append(item)
            }
        }
    }
    

    
    
    
    @IBAction func btnDeleteItemTapped(_ sender: UIButton) {
        
        let cellTag = sender.tag
        let indexPath = IndexPath(row: cellTag, section: 0)
        let id = cartItems[indexPath.row].id
        for item in RO.allRO {
            if item.id == id {
                item.isAddedToCart = false
            }
        }
        cartItems.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .fade)
        
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
        cell.lblPrice.text = "\(cartItems[indexPath.row].price)"
//        cell.btnDeleteItem.addTarget(self, action: #selector(deleteCartItem), for: .touchUpInside)
        cell.layer.cornerRadius = 10
        cell.layer.borderColor = UIColor.gray.cgColor
        cell.layer.borderWidth = 2
        
        return cell
    }
    
}

extension CartViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Handle row selection here
    }
    
}
