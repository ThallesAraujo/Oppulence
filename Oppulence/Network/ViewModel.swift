//
//  ViewModel.swift
//  Oppulence
//
//  Created by Thalles Araújo on 15/01/23.
//

import Foundation
import SwiftUI


class ViewModel<T>: ObservableObject where T: Decodable{
    
    @Published var showError = false
    @Published var isLoading = false
    
    @Published var assignmentModel: T?
 
    var completion: (() -> Void)?
    
    internal func get(request: URLRequest){
        
        isLoading = true
        
       URLSession.shared.dataTask(with: request) { data, _, _ in
                
                if let dataUnwrapped = data {
                    if let response = try? JSONDecoder().decode(T.self, from: dataUnwrapped) {
                        DispatchQueue.main.async {
                            self.showError = false
                            self.assignmentModel = response
                            self.isLoading = false
                            if let completion = self.completion {completion()}
                        }
                        print("Resposta para request de \(T.self): ")
                        dump(response)
                    } else {
                        print("JSON Inválido")
                        DispatchQueue.main.async {
                            self.showError = true
                            self.isLoading = false
                            if let completion = self.completion {completion()}
                        }
                    }
                }
                
            }.resume()
    }
    
    internal func handleError(){
        self.showError = true
        self.isLoading = false
        if let completion = self.completion {completion()}
    }
    
}
