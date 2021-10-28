//
//  itemList.swift
//  Cash_Register_Application
//
//  Created by user202376 on 10/25/21.
//

import Foundation

class itemList
{
    var Name : String
    var Qty : Int
    var Price: Float
    
    init(name : String, qty: Int, price: Float)
    {
        Name = name
        Qty = qty
        Price = price
    }
}
