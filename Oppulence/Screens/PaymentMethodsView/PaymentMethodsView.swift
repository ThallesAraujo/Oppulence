//
//  PaymentMethodsView.swift
//  Oppulence
//
//  Created by Thalles Araújo on 17/12/22.
//

import SwiftUI

struct PaymentMethodsView: View {
    
    var body: some View {
        VStack{
           
            Text("Por restrições legais, rim ainda não é aceito pela plataforma").font(.custom(DMSerifDisplayRegular, size: 16))
            
            
            List {
                Section("Ultra rich tier"){
                    ForEach(ultraRichTierMocks, id: \.desc){payment in
                        VStack(alignment: .leading){
                            Text(payment.desc).font(.custom(DMSerifDisplayRegular, size: 16)).foregroundColor(.black)
                            if payment.observations != ""{
                                Text(payment.observations).font(.custom(OxygenRegular, size: 12)).foregroundColor(.gray)
                            }
                        }
                    }
                }.listRowBackground(Color.white).tint(.white)
                
                Section("Low-to-mid class tier"){
                    ForEach(lowToMidClassTier, id: \.desc){payment in
                        VStack(alignment: .leading){
                            Text(payment.desc).font(.custom(DMSerifDisplayRegular, size: 16)).foregroundColor(.black)
                            if payment.observations != ""{
                                Text(payment.observations).font(.custom(OxygenRegular, size: 12)).foregroundColor(.gray)
                            }
                        }
                    }
                }.listRowBackground(Color.white).tint(.white)
                
            }.font(.custom(OxygenBold, size: 14))
            
        }.toolbar{
            ToolbarItem(placement: .principal, content: {
                Text("Pagamento").font(.custom(DMSerifDisplayRegular, size: 24))
            })
        }.toolbarBackground(.visible).toolbarColorScheme(.dark).toolbarBackground(.black).colorScheme(.dark).background(.black).tint(.white)
    }
}

struct PaymentMethodsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            PaymentMethodsView()
        }
    }
}
