//
//  UIButton+Extension.swift
//  FashionApp
//
//  Created by Engy on 11/16/24.
//

import UIKit

extension UIButton {

    func custom(font: Fonts, size: CGFloat) {
        self.titleLabel?.font = UIFont(name: font.rawValue, size: size)
    }

}
