//
//  Manager.swift
//  Cash_Register_Application
//
//  Created by user202376 on 10/25/21.
//

import Foundation

class Manager {
    var itemlist = [item]()
    var historylist = [history]()
    
    func addNewItem(newItem :item)
    {
        itemlist.append(newItem)
    }
    func getAllItems()->[item]
    {
        return itemlist
    }
    
    func addinHistory(newhistory :history)
    {
        historylist.append(newhistory)
    }
    
    func getHistory()->[history]
    {
        return historylist
    }
}
