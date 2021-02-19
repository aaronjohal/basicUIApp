//
//  customButton.swift
//  skeletonUI
//
//  Created by Aaron Johal on 18/02/2021.
//

import UIKit

class customButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderWidth = 2.0
        layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        layer.cornerRadius = 5
    }

  
}
