//
//  UITableView+Extension.swift
//  FashionApp
//
//  Created by Engy on 11/19/24.
//

import UIKit

extension UITableView {

   func registerTVNib<Cell: UITableViewCell>(cell: Cell.Type) {

       let nibName = String(describing: cell.self)
       self.register(UINib(nibName: nibName, bundle: nil), forCellReuseIdentifier: nibName)
   }

   func dequeueTVCell<Cell: UITableViewCell>(index:IndexPath,cell: Cell.Type) -> Cell {
       let identifier = String(describing: cell.self)
       guard let cell = dequeueReusableCell(withIdentifier: identifier,for: index) as? Cell else{fatalError("Error in dequeue TV Cell")}
       return cell
   }
}


