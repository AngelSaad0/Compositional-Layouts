//
//  HomeHeaderReusable.swift
//  FashionApp
//
//  Created by Engy on 11/16/24.
//

import UIKit

class HomeHeaderReusable: UICollectionReusableView {
    // MARK: - IBOutlets
    @IBOutlet weak var homeSectionHeaderLabel: UILabel!
    @IBOutlet var homeSeeAllButton: UIButton!
    // MARK: - Properties
    var seeAllButtonAction:(()->())?

    // MARK: - Lifecycle Methods
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    @IBAction func seeBtnCliked(_ sender: UIButton) {
        seeAllButtonAction?()
    }
}
// MARK: - setup UI & config Cell
extension HomeHeaderReusable {
    func configCell(_ item: HomeHeader) {
        homeSectionHeaderLabel.text = item.title
        homeSectionHeaderLabel.custom(font: .GabaritoBold, size: 16)
        homeSeeAllButton.custom(font: .GabaritoBold, size: 14)
        seeAllButtonAction = item.action
    }
}
