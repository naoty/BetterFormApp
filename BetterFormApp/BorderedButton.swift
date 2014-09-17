//
//  BorderedButton.swift
//  BetterFormApp
//
//  Created by Naoto Kaneko on 2014/09/16.
//  Copyright (c) 2014年 Naoto Kaneko. All rights reserved.
//

import UIKit

@IBDesignable
class BorderedButton: UIButton {
    @IBInspectable
    var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
}
