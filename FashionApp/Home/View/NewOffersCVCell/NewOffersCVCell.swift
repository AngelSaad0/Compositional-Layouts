//
//  TopSellingCVCell.swift
//  FashionApp
//
//  Created by Engy on 11/15/24.
//

import UIKit

class NewOffersCVCell: UICollectionViewCell {
    // MARK: - IBOutlets 
    @IBOutlet var newOffersTitleLabel: UILabel!
    @IBOutlet var newOffersImage: UIImageView!
    @IBOutlet var newOffersContainerView: UIView!
    @IBOutlet var newOffersImgContainerView: UIView!
    @IBOutlet weak var newOffersPriceLabel: UILabel!
    @IBOutlet weak var newOffersPriceContainerView: UIView!

    // MARK: - Lifecycle Methods
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
}
// MARK: - setup UI & config Cell
extension NewOffersCVCell {
    private func setupUI() {
        newOffersImgContainerView.addShadow(cornerRadius: 2,shadowColor: UIColor(named: "#F2F2F2") ?? .white)
        newOffersPriceContainerView.addCornerRadius(12)
        newOffersPriceContainerView.addShadow()
        newOffersContainerView.addShadow()
    }

    func configCell(_ cell: Products) {
        newOffersTitleLabel.custom(font: .CircularStdBook, size: 16,text: cell.title)
        newOffersPriceLabel.custom(font: .GabaritoBold, size: 15,text: "Just $\((cell.price))",textColor: .CFF7654)
        newOffersImage.image = UIImage(named: cell.image)
    }
}
