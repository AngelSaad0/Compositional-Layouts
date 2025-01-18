//
//  UIWindow.swift
//  FashionApp
//
//  Created by Engy on 11/17/24.
//

import UIKit

extension UIWindow {

    static func setRootViewController(viewController: UIViewController, withTransition transition: UIView.AnimationOptions = .transitionCrossDissolve, duration: TimeInterval = 0.3) {
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let window = windowScene.windows.first {
            UIView.transition(with: window, duration: duration, options: transition, animations: {
                window.rootViewController = viewController
            }, completion: nil)

            window.makeKeyAndVisible()
        }
    }
}

