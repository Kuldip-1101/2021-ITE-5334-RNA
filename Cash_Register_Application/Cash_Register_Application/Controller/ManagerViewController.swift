//
//  ManagerViewController.swift
//  Cash_Register_Application
//
//  Created by user202376 on 10/25/21.
//

import UIKit

class ManagerViewController: UIViewController {

    var manager: Manager?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if(segue.identifier == "tohistory")
        {
            let HTVC = segue.destination as? HistoryTableViewController
            HTVC?.manager = manager
        }
        if(segue.identifier == "torestock")
        {
            let RVC = segue.destination as? RestockViewController
            RVC?.manager = manager
        }
    }
}
