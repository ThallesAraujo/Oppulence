//
//  ProductDetailsView.swift
//  Oppulence
//
//  Created by Thalles Araújo on 26/11/22.
//

import SwiftUI
import UIKit

struct ProductDetailsView: View {
    
    @Binding var product: Product
    
    var body: some View {
            VStack{
                
                ScrollView{
                    VStack(alignment: .leading, spacing: 12){
                        Image("chicken_purse_small").resizable().aspectRatio(contentMode: .fit)
                        
                        Spacer()
                        
                        Text(product.description).font(.custom(DMSerifDisplayRegular, size: 18)).foregroundColor(.gray)
                        
                        Text("Marca: \(product.brand)").font(.custom(DMSerifDisplayRegular, size: 18)).foregroundColor(.gray)
                        
                        Text(product.price.formatCurrency()).font(.custom(OxygenRegular, size: 22))
                    }.padding()
                }
                
                Button(action: {}) {
                    HStack{
                        Text("Formas de Pagamento").font(.custom(DMSerifDisplayRegular, size: 18))
                        Spacer()
                        Image(systemName: "chevron.right").font(.system(size: 24, weight: .regular))
                    }.padding()
                    
                }.padding().buttonStyle(.borderedProminent).buttonBorderShape(.roundedRectangle(radius: 8)).tint(.black)
                
                
                
            }.toolbar{
                ToolbarItem(placement: .principal, content: {
                    Text(product.name).font(.custom(DMSerifDisplayRegular, size: 24)).foregroundColor(.black)
                })
            }
    }
}

struct ProductDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView(content: {
            ProductDetailsView(product: .constant(productMock))
        })
    }
}
