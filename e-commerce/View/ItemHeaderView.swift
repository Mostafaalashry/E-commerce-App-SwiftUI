//
//  ItemHeaderView.swift
//  e-commerce
//
//  Created by mostafa on 07/04/2024.
//

import SwiftUI

struct ItemHeaderView: View {
    @EnvironmentObject var vm : ChairViewModel
    let chair : chairModel

    var body: some View {
        HStack(spacing: 0){
            VStack(alignment: .leading , spacing: 0){
                Text("New Arrival")
                    .font(.system(size: 33,weight: .bold,design: .serif))
                    .foregroundColor(Color.cyan)
                    .padding(.leading)
                Text(chair.description)
                    .font(.system(size: 16,weight: .light,design: .default))
                    .padding(.horizontal)
                    .padding(.top,5)

                Text("Best Selling")
                    .font(.system(size: 18,weight: .bold,design: .serif))
                    .padding(.leading)
                    .padding(.top,5)

                

            }
            
            Image(chair.image)
                .resizable()
                .frame(width: 150 , height: 150 ,alignment: .center)
                .scaledToFit()
        }
        .padding(.vertical)
        .frame(width: UIScreen.main.bounds.width/1.1 ,alignment: .center)
        
        .background(Color.white.cornerRadius(12).shadow(color: Color.blue,radius: 20))
        
        }
    }

/*
struct ItemHeaderView_Previews: PreviewProvider {
    @StateObject var vm = ChairViewModel()
    static var previews: some View {
        ItemHeaderView( chair: vm.chairs.first)
            .environmentObject(ChairViewModel())
    }
}
 */
