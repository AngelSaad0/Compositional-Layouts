//
//  TopSellingCVCell.swift
//  FashionApp
//
//  Created by Engy on 11/15/24.
//

import UIKit

class BestSellerCVCell: UICollectionViewCell {
    // MARK: - IBOutlets
    @IBOutlet var bestSellerTitleLabel: UILabel!
    @IBOutlet var bestSellerDescrptionLabel: UILabel!
    @IBOutlet var bestSellerImg: UIImageView!
    @IBOutlet var bestSellerPriceLabel: UILabel!
    @IBOutlet var bestSellerContainerView: UIView!
    @IBOutlet var bestSellerImgContainer: UIView!
    // MARK: - Lifecycle Methods
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
}
// MARK: - setupUI & configCell
extension BestSellerCVCell {
    private func setupUI() {
        bestSellerImgContainer.addShadow(cornerRadius: 2,shadowColor: UIColor(named: "#F2F2F2") ?? .white)
        bestSellerContainerView.addShadow()
    }
    func configCell(_ cell: Products) {
        bestSellerTitleLabel.custom(font: .CircularStdBook, size: 16,text: cell.title)
        bestSellerPriceLabel.custom(font: .GabaritoBold, size: 14,text: "$ \(cell.price)")
        bestSellerDescrptionLabel.custom(font: .CircularStdBook, size: 13,text: cell.description)
        bestSellerImg.image = UIImage(named: cell.image)
    }
}
