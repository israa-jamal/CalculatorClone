//
//  ZeroButton.swift
//  CalculatorClone
//
//  Created by Esraa Gamal on 5/20/20.
//  Copyright © 2020 Esraa. All rights reserved.
//

import UIKit
@IBDesignable

class ZeroButton: UIButton {

        override func layoutSubviews() {
        super.layoutSubviews()
            self.layer.cornerRadius = self.frame.size.width / 4.5
            self.titleEdgeInsets = UIEdgeInsets(top: 0, left: 35, bottom: 0, right: 0)
            
    }

}
