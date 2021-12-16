//
//  FeedbackViewController.swift
//  Makeup_Product_Application
//
//  Created by user202376 on 12/8/21.
//

import UIKit
import CoreData

class FeedbackViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBOutlet weak var overalltxt: UITextField!
    @IBOutlet weak var detailtxt: UITextView!
    
   
    @IBAction func submitclicked(_ sender: Any) {
        
        if let filloverall = overalltxt.text{
            CoreDataService.shared.insertNewFeedback(overall: filloverall, detail: detailtxt.text)
            overalltxt.text = ""
            detailtxt.text = ""
        }
        var dialogMessage = UIAlertController(title: "Message", message: "Feedback Submitted.", preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
             print("Ok button tapped")
          })
        dialogMessage.addAction(ok)
        self.present(dialogMessage, animated: true, completion: nil)
    }
    
}
