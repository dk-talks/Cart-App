//
//  ServiceViewController.swift
//  Rotash R.O Service
//
//  Created by Dinesh Sharma on 18/04/23.
//

import UIKit

class ServiceViewController: UIViewController {
    
    @IBOutlet weak var imgCheck: UIImageView!
    @IBOutlet var lblDetail: UIView!
    @IBOutlet weak var txtRoModel: UITextField!
    @IBOutlet weak var txtMob: UITextField!
    
    @IBOutlet weak var lblInvalidMob: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
    }
    
    
    
    @IBAction func btnSendTapped(_ sender: Any) {
        if let model = txtRoModel.text, let mob = txtMob.text {
            if isValidMobileNumber(mob) {
                
                let urlString = "https://rotashRO.com/service"
                guard let url = URL(string: urlString) else {
                    print("Invalid URL")
                    return
                }

                var request = URLRequest(url: url)
                request.httpMethod = "POST"

                let stringToSend = mob

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
                
                lblInvalidMob.isHidden = true
                imgCheck.isHidden = false
                self.animateButton()
                lblDetail.isHidden = false
            } else {
                lblInvalidMob.isHidden = false
            }
        }
    }
    
    func isValidMobileNumber(_ mobileNumber: String) -> Bool {
      let mobileNumberPattern = #"^\d{10}$"#
      let mobileNumberPredicate = NSPredicate(format: "SELF MATCHES %@", mobileNumberPattern)
      return mobileNumberPredicate.evaluate(with: mobileNumber)
    }
    
    private func shrinkButton() {
            UIView.animate(withDuration: 0.5) {
                self.imgCheck.transform = CGAffineTransform.identity
            } completion: { done in
                if done {
                    
                    self.animateButton()
                    
                }
            }

        }
        
        private func animateButton() {
            UIView.animate(withDuration: 0.5) {
                self.imgCheck.transform = CGAffineTransform(scaleX: 0.7, y: 0.7)
            } completion: { done in
                if done {
                    self.shrinkButton()
                    
                }
            }
        }
    
    

}
