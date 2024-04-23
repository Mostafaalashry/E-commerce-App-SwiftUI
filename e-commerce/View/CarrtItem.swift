//
//  CarrtItem.swift
//  e-commerce
//
//  Created by mostafa on 08/04/2024.
//

import SwiftUI


  
    struct CarrtItem: View {
        @EnvironmentObject var vm :ChairViewModel
        let chair  : chairModel
        var body: some View {
            HStack(spacing: 0){
                Image(chair.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150 ,height: 150 ,alignment: .center)
                VStack{
                    Text(chair.brand)
                        .font(.system(size: 30 ,weight: .semibold ,design: .serif))
                        .padding(.bottom,5)
                    
                    HStack{
                        Text("$ "+String(chair.Price))
                            .font(.system(size:25 ,weight: .bold ,design: .serif))
                            .foregroundColor(Color.blue)
                        
                        
                         Button {
                             vm.deleeteCartItem(chair: chair)
                         } label: {
                            Image(systemName: "trash.circle.fill")
                                 .font(.system(size: 30 ,weight: .semibold ,design: .serif))
                                 .foregroundColor(Color.black)
                         }
                         .padding(.leading)
                         
                       

                    }
                }
            }
          
            .frame(width: UIScreen.main.bounds.width/1.1 , height: 150 ,alignment: .center)
            .background(Color.white.cornerRadius(12).shadow(color: Color.blue.opacity(0.6), radius: 20))

        }
    }
/*
 struct CarrtItem_Previews: PreviewProvider {
     static var previews: some View {
         CardItemView()
             .environmentObject(ChairViewModel())
     }
 }
 */
    
