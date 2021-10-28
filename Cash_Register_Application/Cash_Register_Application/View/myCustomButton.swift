//
//  myCustomButton.swift
//  Cash_Register_Application
//
//  Created by user202376 on 10/23/21.
//

import UIKit

class myCustomButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        			
    }
    
    required init?(coder: NSCoder) {
        
        //Layer
        super.init(coder: coder)
        layer.cornerRadius = 24
    }

}
