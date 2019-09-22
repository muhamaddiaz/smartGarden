//
//  MainButton.swift
//  Onboarding
//
//  Created by Muhamad Diaz on 21/09/19.
//  Copyright © 2019 Muhamad Diaz. All rights reserved.
//

import UIKit
import SwiftHEXColors

class MainButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override init(frame: CGRect) {
        super.init(frame: frame)
        baseStyle()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        baseStyle()
    }
    
    func baseStyle() {
        layer.cornerRadius = 5
        backgroundColor = UIColor(hexString: "09BC8A")
        setTitleColor(UIColor.white, for: .normal)
    }
}
