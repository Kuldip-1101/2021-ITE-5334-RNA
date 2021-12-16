//
//  DetailViewController.swift
//  Makeup_Product_Application
//
//  Created by user202376 on 12/15/21.
//

import UIKit

class DetailViewController: UIViewController {

    var name: String = ""
    var brand : String = ""
    var p_type : String = ""
    var price : String = ""
    var image_link : String = ""
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var lblname: UILabel!
    
    @IBOutlet weak var lblbrand: UILabel!
    
    @IBOutlet weak var lblType: UILabel!
    
    @IBOutlet weak var lblprice: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ServiceController.shared.getImage(url: image_link) {
            result in
            switch result{
                case .success(let img):
                    self.image.image = img
                    self.lblname.text = "Name: " + self.name
                    self.lblType.text = "Type: " + self.p_type
                    self.lblbrand.text = "Brand: " + self.brand
                    self.lblprice.text = "Price: " + self.price
                case .failure(let error):
                    print(error)
            }
        }
    }
}
