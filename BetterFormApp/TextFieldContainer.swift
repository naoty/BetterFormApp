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
    private var width: CGFloat {
        return CGRectGetWidth(frame)
    }
    private var height: CGFloat {
        return CGRectGetHeight(frame)
    }
    private let borderBottom: CALayer = CALayer()
    
    @IBInspectable
    var borderColor: UIColor = UIColor.blackColor() {
        didSet {
            setupBorderBottom()
        }
    }
    
    @IBInspectable
    var borderBottomWidth: CGFloat = 0 {
        didSet {
            setupBorderBottom()
        }
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        subviews.first?.becomeFirstResponder()
    }
    
    private func setupBorderBottom() {
        borderBottom.removeFromSuperlayer()
        borderBottom.frame = CGRectMake(0, height - borderBottomWidth, width, borderBottomWidth)
        borderBottom.backgroundColor = borderColor.CGColor
        layer.addSublayer(borderBottom)
    }
}
