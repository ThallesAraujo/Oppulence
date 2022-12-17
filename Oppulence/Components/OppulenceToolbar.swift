//
//  OppulenceToolbar.swift
//  Oppulence
//
//  Created by Thalles Araújo on 17/12/22.
//

import SwiftUI

enum UIMode{
    case dark
    case light
}

struct OppulenceToolbar: ToolbarContent {
    
    var title: String
    
    var uiMode: UIMode = .light
    
    var body: some ToolbarContent {
        ToolbarItem(placement: .principal, content: {
            Text(title).font(.custom(DMSerifDisplayRegular, size: 24)).foregroundColor(uiMode == .light ? .black : .white)
        })
    }
}

