//
//  UITextField+Extension.swift
//  FashionApp
//
//  Created by Engy on 11/17/24.
//

import UIKit

extension UITextField {

    func setCustomFont(font: Fonts, size: CGFloat) {
        self.font = UIFont(name: font.rawValue, size: size)
    }

}
