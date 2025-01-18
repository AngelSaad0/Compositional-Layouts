//
//  LabelCircularFont.swift
//  FashionApp
//
//  Created by Engy on 11/16/24.
//

import UIKit

extension UILabel {
    func custom(font: Fonts, size: CGFloat) {
        self.font = UIFont(name: font.rawValue, size: size)
    }
    
    func custom(font: Fonts, size: CGFloat,text:String,textColor :Colors = .C272727 ) {
        self.font = UIFont(name: font.rawValue, size: size)
        self.text = text
        self.textColor =  UIColor(named: textColor.rawValue)
    }
}

