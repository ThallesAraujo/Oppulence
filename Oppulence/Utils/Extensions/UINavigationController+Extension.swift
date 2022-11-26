//
//  UINavigationController+Extension.swift
//  Oppulence
//
//  Created by Thalles Araújo on 26/11/22.
//

import Foundation
import UIKit

extension UINavigationController {
    
    open override func viewWillLayoutSubviews () {
        navigationBar.topItem?.backButtonDisplayMode = .minimal
    }
}
