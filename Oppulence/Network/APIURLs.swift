//
//  APIURLs.swift
//  Oppulence
//
//  Created by Thalles Araújo on 15/01/23.
//

import Foundation

enum APIURLs{
    
    static let baseURL = "https://private-93b58-oppulence.apiary-mock.com"
    
    case getTrending
    
    func request() throws -> URLRequest{
        
        switch self {
        case .getTrending:
            return URLRequest(url: URL(string: "\(APIURLs.baseURL)/trending")!)
        }
        
    }
    
}
