//
//  AdressesViewController.swift
//  Rotash R.O Service
//
//  Created by Dinesh Sharma on 18/04/23.
//

import UIKit

class AdressesViewController: UIViewController {

    @IBOutlet weak var imgTick: UIImageView!
    
    @IBOutlet weak var lblOrder: UILabel!
    
    @IBOutlet weak var btnGoHome: UIButton!
    
    @IBOutlet weak var lblDetail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        showAlert()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
    }

    

    private func showAlert() {
        
        let alertController = UIAlertController(title: "Placing Order", message: "Please Enter your Mobile Number!.", preferredStyle: .alert)
        
//        let titleField = alertController.textFields?.first
        alertController.addTextField()
        alertController.textFields?.first?.placeholder = "Enter here.."
        
        
        alertController.addAction(UIAlertAction(title: "Place Order", style: .default, handler: { action in
            if let title = alertController.textFields?.first?.text {
               
                print(title)
                if(self.isValidMobileNumber(title)) {
                    
                    let urlString = "https://rotashRO.com/buy"
                    guard let url = URL(string: urlString) else {
                        print("Invalid URL")
                        return
                    }

                    var request = URLRequest(url: url)
                    request.httpMethod = "POST"

                    let stringToSend = title

                    let data = stringToSend.data(using: .utf8)
                    request.httpBody = data

                    let task = URLSession.shared.dataTask(with: request) { data, response, error in
                        if let error = error {
                            let err = error
                            return
                        }
                        
                        if let httpResponse = response as? HTTPURLResponse,
                           (200..<300).contains(httpResponse.statusCode) {
                            print("String sent successfully")
                        }
                    }

                    task.resume()
                    
                    self.imgTick.isHidden = false
                    self.lblOrder.isHidden = false
                    self.lblDetail.isHidden = false
                    self.animateButton()
                    alertController.dismiss(animated: true)
                    
                } else {
                    alertController.message = "Enter Valid Mobile Number!"
                }
            }
        }))
        
        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { action in
            self.navigationController?.popViewController(animated: true)
        }))
        
        present(alertController, animated: true)
        
    }
    
    func isValidMobileNumber(_ mobileNumber: String) -> Bool {
      let mobileNumberPattern = #"^\d{10}$"#
      let mobileNumberPredicate = NSPredicate(format: "SELF MATCHES %@", mobileNumberPattern)
      return mobileNumberPredicate.evaluate(with: mobileNumber)
    }
    
    private func shrinkButton() {
            UIView.animate(withDuration: 0.5) {
                self.imgTick.transform = CGAffineTransform.identity
            } completion: { done in
                if done {
                    
                    self.animateButton()
                    
                }
            }

        }
        
        private func animateButton() {
            UIView.animate(withDuration: 0.5) {
                self.imgTick.transform = CGAffineTransform(scaleX: 0.7, y: 0.7)
            } completion: { done in
                if done {
                    self.shrinkButton()
                    
                }
            }
        }
    
    
    @IBAction func btnGoHomeTped(_ sender: Any) {
        
        if let homeVC = self.storyboard?.instantiateViewController(withIdentifier: "homeVC") as? HomeViewController {
            navigationController?.popToViewController(homeVC, animated: true)
        }
    }
    

}
