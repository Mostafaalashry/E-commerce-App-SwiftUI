//
//  CardItemView.swift
//  e-commerce
//
//  Created by mostafa on 07/04/2024.
//

import SwiftUI

struct CardItemView: View {
    @EnvironmentObject var vm :ChairViewModel
    var body: some View {
        NavigationView{
            ScrollView(showsIndicators: false  ){
                ForEach(vm.cartChairsItems) { chair in
                    NavigationLink {
                        ItemDetailView(chair: chair)
                    } label: {
                        CarrtItem(chair: chair)
                            .padding(.vertical,20)
                            .frame(width: UIScreen.main.bounds.width)
                    }
                    
                    
                }
                Spacer()
            }.frame(width: UIScreen.main.bounds.width)
            
        }
    }
}

struct CardItemView_Previews: PreviewProvider {
    static var previews: some View {
        CardItemView()
    }
}
