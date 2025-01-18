//
//  TopSellingCVCell.swift
//  FashionApp
//
//  Created by Engy on 11/15/24.
//

import UIKit

class TopSellingCVCell: UICollectionViewCell {
    // MARK: - IBOutlets
    @IBOutlet var topSellingTitleLabel: UILabel!
    @IBOutlet var topSellingImg: UIImageView!
    @IBOutlet var topSellingPriceLabel: UILabel!
    @IBOutlet var topSellingContainerView: UIView!
    @IBOutlet var topSellingImgContainer: UIView!

    // MARK: - Lifecycle Methods
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
}

// MARK: - setup UI & config Cell
extension TopSellingCVCell {

    private func setupUI() {
        topSellingImgContainer.addShadow(cornerRadius: 2,shadowColor: UIColor(named: "#F2F2F2") ?? .white)
        topSellingContainerView.addShadow()
    }

    func configCell(_ cell: Products) {
        topSellingTitleLabel.custom(font: .CircularStdBook, size: 16,text: cell.title)
        topSellingPriceLabel.custom(font: .GabaritoBold, size: 14,text: "$ \(cell.price)")
        topSellingImg.image = UIImage(named: cell.image)
    }
}
