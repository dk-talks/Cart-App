//
//  WpDetailViewController.swift
//  Rotash R.O Service
//
//  Created by Dinesh Sharma on 20/04/23.
//

import UIKit

class WpDetailViewController: UIViewController {
    
    var img: UIImage!
    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.imgView.image = img
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
