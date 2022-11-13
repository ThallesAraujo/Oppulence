//
//  HomeView.swift
//  Oppulence
//
//  Created by Thalles Araújo on 13/11/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        NavigationView{
            VStack{
                
                Spacer()
                
                HStack(spacing: 16){
                    
                    VStack(alignment: .leading){
                        Text("Haute Couture chicken purse").font(.custom(DMSerifDisplayRegular, size: 24)).foregroundColor(.black).frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("R$ 300.000,00").font(.custom(OxygenRegular, size: 22)).foregroundColor(.gray)
                        
                    }.padding().frame(maxWidth: .infinity, maxHeight: .infinity).background(.white).cornerRadius(8)
                    
                    
                    Button(action: {}, label: {
                        
                        ZStack{
                            Image(systemName: "chevron.right").font(.system(size: 34, weight: .bold)).foregroundColor(.white).padding()
                        }
                        
                    }).padding().frame(maxHeight: .infinity).background(.ultraThinMaterial).cornerRadius(8)
                    
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
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
