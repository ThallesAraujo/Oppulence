//
//  HomeViewModel.swift
//  Oppulence
//
//  Created by Thalles Araújo on 15/01/23.
//

import Foundation

class HomeViewModel: ViewModel<[TrendingItem]>{
    
    func getTrending(){
        do{
            try super.get(request: APIURLs.getTrending.request())
        }catch{
            super.handleError()
        }
    }
    
    
}
