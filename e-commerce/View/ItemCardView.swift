//
//  ItemCardView.swift
//  e-commerce
//
//  Created by mostafa on 07/04/2024.
//

import SwiftUI


struct ItemCardView: View {
    @EnvironmentObject  var vm  : ChairViewModel
    let chair  : chairModel
    
    var body: some View {
        VStack(spacing: 0){
            Image(chair.image)
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 150 , alignment:  .center)
            
            Text(chair.brand)
                .font(.title3)
                .fontWeight(.semibold)
            Text(chair.stateOnMarket)
                .font(.headline)
                .padding(.top ,5)
            
            Text( "$" + String(chair.Price))
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(Color.blue)
                .padding(.top)
            
        }
        .frame(width: 200 , height: 300 , alignment: .center)
        .background(Color.white.cornerRadius(12).shadow(color: Color.blue.opacity(0.6), radius: 8))
    }
}
/*
 struct ItemCardView_Previews: PreviewProvider {
     static var previews: some View {
         ItemCardView()
             .environmentObject(ChairViewModel())
     }
 }

 */
