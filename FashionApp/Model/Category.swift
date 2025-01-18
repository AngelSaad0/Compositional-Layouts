//
//  Category.swift
//  FashionApp
//
//  Created by Engy on 11/20/24.
//

import Foundation

struct Category {
    let title: CatagoryTitle
    let image: String
}
let categoriesList: [Category] = [
    Category(title: .Accessories, image: "sunglasses"),
    Category(title: .Hoodies, image: "Hoodies"),
    Category(title: .Shoes, image: "short"),
    Category(title: .Bag, image: "Bag"),
    Category(title: .Jeans, image: "Jeans"),
    Category(title: .Jackets, image: "Jackets")
]
