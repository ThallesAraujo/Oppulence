//
//  TrendingItem.swift
//  Oppulence
//
//  Created by Thalles Araújo on 15/01/23.
//

import Foundation

struct TrendingItem: Codable {
    let title: String
    let price: Int
    let bannerImg: String

    enum CodingKeys: String, CodingKey {
        case title, price
        case bannerImg = "banner_img"
    }
}
