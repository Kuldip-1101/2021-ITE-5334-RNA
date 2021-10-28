//
//  item.swift
//  Cash_Register_Application
//
//  Created by user202376 on 10/25/21.
//

import Foundation

class item
{
    var itemName : String
    var itemQty : Int
    var itemPrice: Float
    
    init(name : String, qty: Int, price: Float)
    {
        itemName = name
        itemQty = qty
        itemPrice = price
    }
}
