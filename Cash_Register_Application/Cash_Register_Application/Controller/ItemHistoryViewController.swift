//
//  ItemHistoryViewController.swift
//  Cash_Register_Application
//
//  Created by user202376 on 10/25/21.
//

import UIKit

class ItemHistoryViewController: UIViewController {
    
    @IBOutlet weak var ItemName: UILabel!
    
    @IBOutlet weak var ItemQty: UILabel!
    
    @IBOutlet weak var TotalPrice: UILabel!
    
    @IBOutlet weak var Date: UILabel!
    
    
    var history : history?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ItemName.text = history?.itemName
        ItemQty.text = String(history!.itemQty)
        TotalPrice.text = "Total Amount: " + String(history!.totalPrice)
        Date.text = history?.purchaseDate
        self.title = history?.itemName
    }

}
