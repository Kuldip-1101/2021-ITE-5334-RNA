//
//  myCustomTableViewCell.swift
//  Cash_Register_Application
//
//  Created by user202376 on 10/24/21.
//

import UIKit

class myCustomTableViewCell: UITableViewCell {

    
    @IBOutlet weak var itemName: UILabel!
    
    @IBOutlet weak var itemQty: UILabel!
    
    @IBOutlet weak var itemPrice: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
