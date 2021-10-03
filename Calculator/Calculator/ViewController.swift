//
//  ViewController.swift
//  Calculator
//
//  Created by user202376 on 9/29/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var MainScreenLabel: UILabel!

    @IBOutlet weak var History: UITextView!
    
    var flag = false
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ButtonClickHandler(_ sender: UIButton) {
       
        switch sender.tag {
            case 0:
                MainScreenLabel.text! += "0"
                push(s: "0")
            case 1:
                MainScreenLabel.text! += "1"
                push(s: "1")
            case 2:
                MainScreenLabel.text! += "2"
                push(s: "2")
            case 3:
                MainScreenLabel.text! += "3"
                push(s: "3")
            case 4:
                MainScreenLabel.text! += "4"
                push(s: "4")
            case 5:
                MainScreenLabel.text! += "5"
                push(s: "5")
            case 6:
                MainScreenLabel.text! += "6"
                push(s: "6")
            case 7:
                MainScreenLabel.text! += "7"
                push(s: "7")
            case 8:
                MainScreenLabel.text! += "8"
                push(s: "8")
            case 9:
                MainScreenLabel.text! += "9"
                push(s: "9")
            case 10:
                MainScreenLabel.text! += "+"
                push(s: "+")
            case 11:
                MainScreenLabel.text! += "-"
                push(s: "-")
            case 12:
                MainScreenLabel.text! += "*"
                push(s: "*")
            case 13:
                MainScreenLabel.text! += "/"
                push(s: "/")
            case 14:
                if Validate()
                {
                    var result = calculator_logic()
                    MainScreenLabel.text! += "= \(result)"
                    if flag
                    {
                        History.text += MainScreenLabel.text! + "\n"
                    }
                }
                else
                {
                    let alert = UIAlertController(title: "Input Alert", message: "Please Enter Valid Input.", preferredStyle: UIAlertController.Style.alert)

                    // add an action (button)
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

                    // show the alert
                    self.present(alert, animated: true, completion: nil)
                    MainScreenLabel.text = ""
                }
            case 15:
                clean()
                MainScreenLabel.text! = ""
            case 16:
                if sender.currentTitle == "Advance - With History"
                {
                    sender.setTitle("Standard - No History", for: .normal)
                    History.isHidden = false
                    flag = true
                }
                else{
                    sender.setTitle("Advance - With History", for: .normal)
                    History.isHidden = true
                    History.text = ""
                    flag = false
                }
            default: break
        }

    }
}

