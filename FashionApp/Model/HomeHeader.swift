//
//  HomeHeader.swift
//  FashionApp
//
//  Created by Engy on 11/16/24.
//

import Foundation

struct HomeHeader {
    let title: String
    let action: ()->()
}

let sectionList: [HomeHeader] = [
    HomeHeader(title: "Categories", action: {}),
    HomeHeader(title: "Top Selling", action: {}),
    HomeHeader(title: "New In", action: {}),
    HomeHeader(title: "New Offers", action: {}),
    HomeHeader(title: "Popular", action: {}),
    HomeHeader(title: "Best Sellers", action: {}),
]
