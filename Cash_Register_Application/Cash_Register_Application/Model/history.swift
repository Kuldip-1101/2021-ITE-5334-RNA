//
//  history.swift
//  Cash_Register_Application
//
//  Created by user202376 on 10/25/21.
//

import Foundation

class history
{
    var itemName : String
    var itemQty : Int
    var totalPrice: Double
    var purchaseDate: String
    
    init(name : String, qty: Int, total: Double, date: String)
    {
        itemName = name
        itemQty = qty
        totalPrice = total
        purchaseDate = date
    }
}
