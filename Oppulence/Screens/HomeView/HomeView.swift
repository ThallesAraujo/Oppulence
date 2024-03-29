//
//  HomeView.swift
//  Oppulence
//
//  Created by Thalles Araújo on 13/11/22.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        
        NavigationView{
            VStack{
                
                Spacer()
                
                HStack(spacing: 16){
                    
                    VStack(alignment: .leading){
                        Text("Haute Couture chicken purse").font(.custom(DMSerifDisplayRegular, size: 24)).foregroundColor(.black).frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("R$ 300.000,00").font(.custom(OxygenRegular, size: 22)).foregroundColor(.gray)
                        
                    }.padding().frame(maxWidth: .infinity, maxHeight: .infinity).background(.white).cornerRadius(8)
                    
                    
                    
                    
                    NavigationLink {
                        ProductDetailsView(product: .constant(Product.init(name: "Chicken Purse", price: 300000, description: "Última moda em Paris, a bolsa de galinha de alta costura é um must-have para looks de gala, perfeita para viagens internacionais e eventos corporativos.", brand: "Mike Oxlong Design Co.", supportedPaymentMethods: [.init(desc: "", observations: "")], imageUrl: "")))
                    } label: {
                        ZStack{
                            Image(systemName: "chevron.right").font(.system(size: 34, weight: .bold)).foregroundColor(.white).padding()
                        }
                    }.padding().frame(maxHeight: .infinity).background(.ultraThinMaterial).cornerRadius(8)

                    
                    
                    
                }.padding().fixedSize(horizontal: false, vertical: true)
                
                
                
            }.background(
                Image("chicken_purse_banner").edgesIgnoringSafeArea(.all)
            ).toolbar{
                ToolbarItem(placement: .principal, content: {
                    HStack{
                        Text("Tendências").font(.custom(DMSerifDisplayRegular, size: 32)).foregroundColor(.white)
                        Spacer()
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "ellipsis.circle").font(.system(size: 24, weight: .bold)).foregroundColor(.white)
                        })
                    }.shadow(color: .black, radius: 14)
                })
            }
            
        }.preferredColorScheme(.light).accentColor(.black).navigationTitle("").onAppear(perform: {
            viewModel.getTrending()
        })
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
