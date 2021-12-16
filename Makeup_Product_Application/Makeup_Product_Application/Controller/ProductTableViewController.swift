//
//  ProductTableViewController.swift
//  Makeup_Product_Application
//
//  Created by user202376 on 12/15/21.
//

import UIKit

class ProductTableViewController: UITableViewController {

    lazy var results = [product]()
    override func viewDidLoad() {
        super.viewDidLoad()

        ServiceController.shared.getproduct{resultsFromAPI in
            DispatchQueue.main.async {
                self.results = resultsFromAPI
                self.tableView.reloadData()
            }
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return results.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        let item = results[indexPath.row]
        cell.textLabel?.text = item.name

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let DVC = segue.destination as! DetailViewController
        DVC.name = results[tableView.indexPathForSelectedRow!.row].name
        DVC.brand = results[tableView.indexPathForSelectedRow!.row].brand
        DVC.p_type = results[tableView.indexPathForSelectedRow!.row].product_type
        DVC.price = results[tableView.indexPathForSelectedRow!.row].price
        DVC.image_link = results[tableView.indexPathForSelectedRow!.row].image_link
    }

}
