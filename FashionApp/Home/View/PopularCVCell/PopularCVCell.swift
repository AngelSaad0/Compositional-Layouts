//
//  NewArrivalsCVCell.swift
//  FashionApp
//
//  Created by Engy on 12/14/24.
//
import UIKit

class PopularCVCell: UICollectionViewCell {
    // MARK: - IBOutlets
    @IBOutlet weak var popularImageView: UIImageView!
    @IBOutlet weak var popularContainerView: UIView!
    @IBOutlet weak var popularLabel: UILabel!
    @IBOutlet weak var popularNameLabel: UILabel!
    @IBOutlet weak var popularPriceLabel: UILabel!
    @IBOutlet weak var popularImgContainer: UIImageView!

    // MARK: - Lifecycle Methods
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
}
// MARK: - setup UI & config Cell
extension PopularCVCell {
    private func setupUI() {
        popularImgContainer.addShadow(cornerRadius: 2,shadowColor: UIColor(named: "#F2F2F2") ?? .white)
        popularContainerView.addShadow()
    }

    func configCell(_ cell:Products) {
        popularNameLabel.custom(font: .CircularStdBook, size: 16,text: cell.title)
        popularPriceLabel.custom(font: .GabaritoBold, size: 14,text: "$ \(cell.price)")
        popularLabel.custom(font: .GabaritoBold, size: 14,text: "⭐ \(cell.rating ?? 0)",textColor: .C5E5E5E)
        popularImageView.image = UIImage(named: cell.image)
    }
}



