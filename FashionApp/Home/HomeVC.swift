//
//  HomeVC.swift
//  FashionApp
//
//  Created by Engy on 11/15/24.
//

import UIKit
class HomeVC: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet var collectionView: UICollectionView!

    // MARK: - Properties
    let sections = sectionList
    let categories = categoriesList
    let topSellingProducts = topSellingProductsDummy
    let newInProducts = newInProductsDummy
    let newOffersProducts = newOffersProductsDummy
    let popularProducts = popularProductsDummy
    let bestSellersProducts = bestSellersProductsDummy

    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }
}
// MARK: - init UI
extension HomeVC {
    private func initUI() {
        let layout = UICollectionViewCompositionalLayout {sectionIndex,_ in
            switch sectionIndex {
            case 0 :
                return self.drawCategoriesSection()
            case 1 :
                return self.drawTopSellingSection()
            case 2 :
                return self.drawNewInSection()
            case 3 :
                return self.drawNewOfferSection()
            case 4:
                return self.drawPopularSection()
            default:
                return self.drawBestSellersSection()
            }
        }
        collectionView.delegate = self
        collectionView.dataSource = self

        collectionView.registerCVNib(cell: CategoriesCVCell.self)
        collectionView.registerCVNib(cell: TopSellingCVCell.self)
        collectionView.registerCVNib(cell: NewInCVCell.self)
        collectionView.registerCVNib(cell: NewOffersCVCell.self)
        collectionView.registerCVNib(cell: PopularCVCell.self)
        collectionView.registerCVNib(cell: BestSellerCVCell.self)

        collectionView.setCollectionViewLayout(layout, animated: true)
        collectionView.registerSupplementaryView(view: HomeHeaderReusable.self, kind: UICollectionView.elementKindSectionHeader)
    }
}

// MARK: - UICollectionViewDelegate,UICollectionViewDataSource
extension HomeVC : UICollectionViewDelegate,UICollectionViewDataSource {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return sections.count
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
        case 0 :
            return categories.count
        case 1 :
            return topSellingProducts.count
        case 2 :
            return newInProducts.count
        case 3 :
            return newOffersProducts.count
        case 4 :
            return popularProducts.count
        case 5 :
            return bestSellersProducts.count
        default:return 0
        }

    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.section {
        case 0:
            let cellA = collectionView.dequeueCVCell(for: indexPath, cell: CategoriesCVCell.self)!
            cellA.configCell(categories[indexPath.row])
            return cellA
        case 1:
            let cellA = collectionView.dequeueCVCell(for: indexPath, cell: TopSellingCVCell.self)!
            cellA.configCell(topSellingProducts[indexPath.row])
            return cellA
        case 2:
            let cellB = collectionView.dequeueCVCell(for: indexPath, cell: NewInCVCell.self)!
            cellB.configCell(newInProducts[indexPath.row])
            return cellB
        case 3:
            let cellC = collectionView.dequeueCVCell(for: indexPath, cell: NewOffersCVCell.self)!
            cellC.configCell(newOffersProducts[indexPath.row])
            return cellC
        case 4:
            let cellD = collectionView.dequeueCVCell(for: indexPath, cell: PopularCVCell.self)!
            cellD.configCell(popularProducts[indexPath.row])
            return cellD
        case 5:
            let cellE = collectionView.dequeueCVCell(for: indexPath, cell: BestSellerCVCell.self)!
            cellE.configCell(bestSellersProducts[indexPath.row])
            return cellE
        default:
            return UICollectionViewCell()
        }
    }
}
// MARK: - UICollectionViewDelegateFlowLayout
extension HomeVC: UICollectionViewDelegateFlowLayout {
    /// Draws a collection view section with a specified layout configuration.
    /// - Parameters:
    ///   - spacingBetweenGroup: Spacing between groups in the section.
    ///   - groupWidth: Width of each group in the section.
    ///   - groupHeightRatio: Aspect ratio of the group height to its width.
    ///   - contentInsets: Insets applied to the section content.
    ///   - headerHeight: Optional height for the section header.
    ///   - headerElementKind: Optional kind identifier for the section header.
    /// - Returns: A configured `NSCollectionLayoutSection`.
    func drawSection(
        spacingBetweenGroup: CGFloat,
        groupWidth: CGFloat,
        groupHeightRatio: CGFloat,
        contentInsets: NSDirectionalEdgeInsets,
        headerHeight: CGFloat? = nil,
        headerElementKind: String? = nil
    ) -> NSCollectionLayoutSection {
        let groupHeight = groupWidth * groupHeightRatio
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(groupWidth), heightDimension: .absolute(groupHeight))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        group.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: spacingBetweenGroup)

        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        section.contentInsets = contentInsets

        if let headerHeight, let headerElementKind {
            let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(headerHeight))
            let headerSupplementary = NSCollectionLayoutBoundarySupplementaryItem(
                layoutSize: headerSize,
                elementKind: headerElementKind,
                alignment: .top
            )
            section.boundarySupplementaryItems = [headerSupplementary]
        }

        return section
    }

    func drawCategoriesSection() -> NSCollectionLayoutSection {
        return drawSection(
            spacingBetweenGroup: 12,
            groupWidth: 70 + 12,
            groupHeightRatio: 95/(70+12),
            contentInsets: NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16),
            headerHeight: 30,
            headerElementKind: UICollectionView.elementKindSectionHeader
        )
    }

    func drawTopSellingSection() -> NSCollectionLayoutSection {
        return drawSection(
            spacingBetweenGroup: 16,
            groupWidth: 159 + 16,
            groupHeightRatio: 300/(159 + 16),
            contentInsets: NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16),
            headerHeight: 30,
            headerElementKind: UICollectionView.elementKindSectionHeader
        )
    }

    func drawNewInSection() -> NSCollectionLayoutSection {
        return drawSection(
            spacingBetweenGroup: 16,
            groupWidth: 300 + 16,
            groupHeightRatio: 160/(300 + 16),
            contentInsets: NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16),
            headerHeight: 30,
            headerElementKind: UICollectionView.elementKindSectionHeader
        )
    }
    func drawNewOfferSection() -> NSCollectionLayoutSection {
        return drawSection(
            spacingBetweenGroup: 16,
            groupWidth: 130 + 16,
            groupHeightRatio: 220/(130 + 16),
            contentInsets: NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16),
            headerHeight: 30,
            headerElementKind: UICollectionView.elementKindSectionHeader
        )
    }

    func drawPopularSection () -> NSCollectionLayoutSection {
        return drawSection(
            spacingBetweenGroup: 16,
            groupWidth: 350 + 16,
            groupHeightRatio: 160/(350 + 16),
            contentInsets: NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16),
            headerHeight: 30,
            headerElementKind: UICollectionView.elementKindSectionHeader
        )
    }

    func  drawBestSellersSection ()-> NSCollectionLayoutSection {
        return drawSection(
            spacingBetweenGroup: 24,
            groupWidth: 200 + 16,
            groupHeightRatio: 295/(200 + 16),
            contentInsets: NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16),
            headerHeight: 30,
            headerElementKind: UICollectionView.elementKindSectionHeader
        )
    }

    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        guard kind == UICollectionView.elementKindSectionHeader else {
            return UICollectionReusableView()
        }
        let header = collectionView.dequeueSupplementaryView(for: UICollectionView.elementKindSectionHeader, indexPath: indexPath, view: HomeHeaderReusable.self)
        let item = sections[indexPath.section]
        header?.configCell(item)
        return header ?? UICollectionReusableView()
    }
}
