


//
//  ReviewTableViewController.swift
//  Makeup_Product_Application
//
//  Created by user202376 on 12/8/21.
//

import UIKit
import CoreData


class ReviewTableViewController: UITableViewController {

    var allFeedback = [Feedback]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        allFeedback = CoreDataService.shared.getAllfeedback()
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return allFeedback.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = allFeedback[indexPath.row].overall
        cell.detailTextLabel?.text = allFeedback[indexPath.row].detail
        return cell
    }

        
        
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            CoreDataService.shared.deleteoneFeedback(todelete: allFeedback[indexPath.row])
            allFeedback = CoreDataService.shared.getAllfeedback()
            tableView.reloadData()
            
        }
    }
    

}
