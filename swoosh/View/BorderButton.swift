//
//  BorderButton.swift
//  swoosh
//
//  Created by Brian Martin on 4/11/18.
//  Copyright © 2018 Brian Martin. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
