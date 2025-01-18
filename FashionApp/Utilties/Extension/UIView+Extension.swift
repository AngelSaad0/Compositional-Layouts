//
//  UIView+Extension.swift
//  FashionApp
//
//  Created by Engy on 11/18/24.
//

import UIKit
extension UIView {
    func addCornerRadius(_ radius: CGFloat) {
        self.layer.cornerRadius = radius
    }
    func addShadow(color:UIColor = .white,cornerRadius: CGFloat = 10,shadowColor: UIColor = .black,shadowRadius:CGFloat = 5) {
        self.layer.cornerRadius = cornerRadius
        self.layer.shadowColor = shadowColor.cgColor
        self.layer.shadowOpacity = 0.2
        self.layer.shadowRadius = shadowRadius
        self.layer.shadowOffset = CGSize(width: 0, height: 5)
    }
}

