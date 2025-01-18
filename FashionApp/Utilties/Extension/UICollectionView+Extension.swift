//
//  UICollectionView+Extension.swift
//  FashionApp
//
//  Created by Engy on 11/19/24.
//

import UIKit

extension UICollectionView {

    func registerCVNib<Cell: UICollectionViewCell>(cell: Cell.Type) {
        let nibName = String(describing: cell.self)
        if Bundle.main.path(forResource: nibName, ofType: "nib") != nil {
            self.register(UINib(nibName: nibName, bundle: nil), forCellWithReuseIdentifier: nibName)
        } else {
            print("Warning: Nib file for \(nibName) not found.")
        }
    }

    func dequeueCVCell<Cell: UICollectionViewCell>(for index: IndexPath,cell: Cell.Type) -> Cell? {
        let identifier = String(describing: cell.self)

        guard let cell = dequeueReusableCell(withReuseIdentifier: identifier, for: index) as? Cell else {fatalError("Error in dequeue CV Cell")}
        return cell
    }
       func registerSupplementaryView<View: UICollectionReusableView>(view: View.Type, kind: String) {
           let nibName = String(describing: view.self)
           if Bundle.main.path(forResource: nibName, ofType: "nib") != nil {
               self.register(UINib(nibName: nibName, bundle: nil), forSupplementaryViewOfKind: kind, withReuseIdentifier: nibName)
           } else {
               print("Warning: Nib file for \(nibName) not found.")
           }
       }

       func dequeueSupplementaryView<View: UICollectionReusableView>(for kind: String, indexPath: IndexPath, view: View.Type) -> View? {
           let identifier = String(describing: view.self)

           guard let supplementaryView = dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: identifier, for: indexPath) as? View else {
               fatalError("Error in dequeue supplementary view of type \(identifier)")
           }
           return supplementaryView
       }
}


