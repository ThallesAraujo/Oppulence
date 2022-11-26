//
//  Product.swift
//  Oppulence
//
//  Created by Thalles Araújo on 26/11/22.
//

import Foundation

struct Product: Codable{
    
    var name: String
    var price: Double
    var description: String
    var brand: String
    var supportedPaymentMethods: [PaymentMethod]
    var imageUrl: String
    
}

struct PaymentMethod: Codable{
    
    var desc: String
    var observations: String
    
}
