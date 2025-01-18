//
//  UIViewController+Extension.swift
//  FashionApp
//
//  Created by Engy on 11/17/24.
//

import UIKit

extension UIViewController {
    

    func presentDetail(_ viewControllerToPresent: UIViewController) {
        let transition = CATransition()
        transition.duration = 0.25
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromRight
        self.view.window!.layer.add(transition, forKey: kCATransition)
        viewControllerToPresent.modalPresentationStyle = .fullScreen

        present(viewControllerToPresent, animated: false)
    }

    func dismissDetail() {
        let transition = CATransition()
        transition.duration = 0.25
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromLeft
        self.view.window!.layer.add(transition, forKey: kCATransition)

        dismiss(animated: false)
    }
    func pushViewController(storyboard:String = "Main",vcIdentifier:String, withNav nav: UINavigationController?){
        let viewController = UIStoryboard(name: storyboard, bundle: nil).instantiateViewController(withIdentifier:vcIdentifier)
        nav?.pushViewController(viewController, animated: true)
    }
    func setupKeyboardDismissal() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tapGesture)
    }

    @objc private func dismissKeyboard() {
        view.endEditing(true)
    }

    func showNoInternetAlert() {
        let alert = UIAlertController(title: "No Internet", message: "Please check your internet connection.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }

    @MainActor func showAlert(
        title: String,
        message: String,
        okTitle: String = "OK",
        cancelTitle: String = "Cancel",
        okStyle: UIAlertAction.Style = .default,
        cancelStyle: UIAlertAction.Style = .cancel,
        okHandler: ((UIAlertAction) -> Void)? = nil,
        cancelHandler: ((UIAlertAction) -> Void)? = nil
    ) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(title: okTitle, style: okStyle, handler: okHandler))

        alert.addAction(UIAlertAction(title: cancelTitle, style: cancelStyle, handler: cancelHandler))

        present(alert, animated: true, completion: nil)
    }

    @MainActor func showAlert(
        title: String,
        message: String,
        okTitle: String = "OK",
        okStyle: UIAlertAction.Style = .default,
        cancelStyle: UIAlertAction.Style = .cancel,
        okHandler: ((UIAlertAction) -> Void)? = nil
    ) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(title: okTitle, style: okStyle, handler: okHandler))

        present(alert, animated: true, completion: nil)
    }

    func changeBackButtonName(name: String) {
        navigationController?.navigationBar.topItem?.title = name
    }

    func showLoginFirstAlert(to message: String) {
        showAlert(title: "Login first", message: "You need to login in order to \(message)", okTitle: "Login") { _ in
            self.pushViewController(vcIdentifier: "SignInViewController", withNav: self.navigationController)
        } cancelHandler: { _ in }
    }
}
