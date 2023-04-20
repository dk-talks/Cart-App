//
//  ROViewController.swift
//  Rotash R.O Service
//
//  Created by Dinesh Sharma on 18/04/23.
//

import UIKit

class ROViewController: UIViewController, UISearchResultsUpdating {
    
    
    let cartButton = UIButton(type: .custom)
    let cartCountLabel = UILabel(frame: CGRect(x: 20, y: -5, width: 20, height: 20))
        
    let formatter = NumberFormatter()
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let searchController = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var cartItems: Int = 0
        for ro in RO.allRO {
            if(ro.isAddedToCart) {
                cartItems += 1
            }
        }
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        // Set up search controller
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search"
        
        // Add search bar to navigation bar
        navigationItem.searchController = searchController
        definesPresentationContext = true
        
        formatter.numberStyle = .currency
        let locale = Locale.current
        
        cartButton.addTarget(self, action: #selector(cartButtonTapped), for: .touchUpInside)
        let rightBarBtn = UIBarButtonItem(customView: cartButton)
        
        navigationItem.rightBarButtonItem = rightBarBtn
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        var cartItems: Int = 0
        for ro in RO.allRO {
            if(ro.isAddedToCart) {
                cartItems += 1
            }
        }
        cartCountLabel.text = "\(cartItems)"
    }
    
    override func viewDidLayoutSubviews() {
        cartButton.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        cartButton.setImage(UIImage(named: "cart_icon"), for: .normal)
        cartCountLabel.layer.cornerRadius = 10
        cartCountLabel.clipsToBounds = true
        cartCountLabel.textAlignment = .center
        cartCountLabel.backgroundColor = .red
        cartCountLabel.textColor = .white
        cartCountLabel.font = UIFont.systemFont(ofSize: 12)
        
        cartButton.addSubview(cartCountLabel)
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        print(searchController.searchBar.text)
    }
    
    @objc func cartButtonTapped() {
        if let cartVC = self.storyboard?.instantiateViewController(withIdentifier: "cartVC") as? CartViewController {
            navigationController?.pushViewController(cartVC, animated: true)
        }
    }
    
    
    
}


extension ROViewController: UICollectionViewDelegate {
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if let vc = self.storyboard?.instantiateViewController(withIdentifier: "roDetailVC") as? RoDetailViewController {
            vc.ro = RO.allRO[indexPath.item]
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    
}

extension ROViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return RO.allRO.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? ROCollectionViewCell {
            let product = RO.allRO[indexPath.item]
            cell.imageView.image = UIImage(named: product.image)
            cell.lblProductCost.text = formatter.string(from: NSNumber(value: product.price))
            cell.lblProductName.text = product.name
            cell.outerView.layer.borderWidth = 1
            cell.outerView.layer.borderColor = UIColor.blue.cgColor
            cell.outerView.layer.cornerRadius = 10
            return cell
        } else {
            return UICollectionViewCell()
        }
        
    }
    
}

extension ROViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (collectionView.frame.size.width-10)/2
        return CGSize(width: size, height: size)
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        return 5
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        return 5
//    }
}


