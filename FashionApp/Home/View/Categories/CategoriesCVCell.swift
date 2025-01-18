//
//  CategoriesCVCell.swift
//  FashionApp
//
//  Created by Engy on 11/15/24.
//

import UIKit

class CategoriesCVCell: UICollectionViewCell {
    // MARK: - IBOutlets
    @IBOutlet var categorieTitleLabel: UILabel!
    @IBOutlet var categorieImage: UIImageView!
    // MARK: - Lifecycle Methods
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
}
// MARK: - setup UI & config Cell
extension CategoriesCVCell {
    private func setupUI() {
        DispatchQueue.main.async {
            self.categorieImage.addCornerRadius(12)
            self.categorieImage.addShadow()
        }
    }

    func configCell(_ cell: Category) {
        categorieTitleLabel.custom(font: .CircularStdBook, size: 12,text: cell.title.rawValue)
        categorieImage.image = UIImage(named: cell.image)
    }
}
