//
//  TextFieldContainer.swift
//  BetterFormApp
//
//  Created by Naoto Kaneko on 2014/09/16.
//  Copyright (c) 2014年 Naoto Kaneko. All rights reserved.
//

import UIKit

@IBDesignable
class TextFieldContainer: UIView {
    @IBInspectable
    var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        subviews.first?.becomeFirstResponder()
    }
}
