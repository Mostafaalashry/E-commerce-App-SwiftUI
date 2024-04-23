//
//  MainView.swift
//  e-commerce
//
//  Created by mostafa on 07/04/2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            ListedItemView()
                .tabItem {
                   Image(systemName: "house.fill")
                }
            CardItemView()
                .tabItem {
                   Image(systemName: "cart.fill")
                }
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
