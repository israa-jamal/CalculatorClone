//
//  RoundButton.swift
//  CalculatorClone
//
//  Created by Esraa Gamal on 5/20/20.
//  Copyright © 2020 Esraa. All rights reserved.
//

import UIKit
@IBDesignable

class RoundButton: UIButton {

    override func layoutSubviews() {
    super.layoutSubviews()
        self.layer.cornerRadius = self.frame.size.width / 2
        
    }
   

}
