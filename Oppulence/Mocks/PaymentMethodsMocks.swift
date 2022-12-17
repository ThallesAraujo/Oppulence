//
//  PaymentMethodsMocks.swift
//  Oppulence
//
//  Created by Thalles Araújo on 17/12/22.
//

import Foundation

let ultraRichTierMocks: [PaymentMethod] = [
    .init(desc: "Lancha", observations: ""),
    .init(desc: "Casa de Veraneio", observations: "Disponível apenas para Saint-Tropez, Veneza e Milão"),
    .init(desc: "Ações", observations: ""),
    .init(desc: "Carro importado", observations: "")
]

let lowToMidClassTier: [PaymentMethod] = [
    .init(desc: "Cartão de Crédito", observations: "Necessário pelo menos R$ 25.000,00 em limite"),
    .init(desc: "PIX", observations: "")
]
