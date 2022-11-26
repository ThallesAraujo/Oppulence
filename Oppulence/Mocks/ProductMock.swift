//
//  ProductMock.swift
//  Oppulence
//
//  Created by Thalles Araújo on 26/11/22.
//

import Foundation

let productMock = Product.init(
    name: "Mock Product",
    price: 3000,
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    brand: "Mock Brand Co.",
    supportedPaymentMethods: [.init(desc: "Mock Payment", observations: "Blablablabla")],
    imageUrl: "https://cdn.walletmonitor.com/img/1b03762c200092a7be366a2bc5b0157f.jpg")
