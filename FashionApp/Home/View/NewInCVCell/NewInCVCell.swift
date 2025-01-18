//
//  NewArrivalsCVCell.swift
//  FashionApp
//
//  Created by Engy on 12/14/24.
//
import UIKit

class NewInCVCell: UICollectionViewCell {
    // MARK: - IBOutlets
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var newInContainerView: UIView!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    @IBOutlet weak var newInImgContainer: UIImageView!

    // MARK: - Lifecycle Methods
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
}
// MARK: - setup UI & config Cell
extension NewInCVCell {
    // MARK: - UI Setup
    private func setupUI() {
        newInContainerView.addShadow()
        newInImgContainer.addShadow(cornerRadius: 2,shadowColor: UIColor(named: "#F2F2F2") ?? .white)
    }
    
    func configCell(_ cell:Products) {
        productNameLabel.custom(font: .CircularStdBook, size: 16,text: cell.title)
        productPriceLabel.custom(font: .GabaritoBold, size: 14,text: "$ \(cell.price)")
        categoryLabel.custom(font: .GabaritoBold, size: 14,text: "⭐ \(cell.rating ?? 0)",textColor: .C5E5E5E)
        productImageView.image = UIImage(named: cell.image)
    }
}

