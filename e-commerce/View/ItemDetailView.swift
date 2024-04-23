//
//  ItemDetailView.swift
//  e-commerce
//
//  Created by mostafa on 07/04/2024.
//

import SwiftUI

struct ItemDetailView: View {
    @EnvironmentObject var vm : ChairViewModel
    let chair  : chairModel
    @State var count : Int = 0
    @State var isAnimated : Bool = false

    @State var isColor1Selected : Bool = false
    @State var isColor2Selected : Bool = false
    @State var isColor3Selected : Bool = false
    @State var isColor4Selected : Bool = false

    var body: some View {
        VStack{
            Image(chair.image)
                .resizable()
                .scaledToFill()
                .frame(height: UIScreen.main.bounds.height/3.5,alignment: .center)
                .offset(x: 0 ,y: isAnimated ? 0 : 30)
                .onAppear{
                    withAnimation (.easeInOut(duration: 0.5)) {
                       isAnimated = true
                    }
                }
            
            Text(chair.brand)
                .font(.system(size: 35, weight: .semibold , design: .serif))
                .frame(maxWidth: .infinity , alignment:  .leading)
                .padding(.leading ,20)
                .padding(.top,20)
            
            Text("$"+String(chair.Price))
                .font(.system(size: 30, weight: .bold , design: .monospaced))
                .frame(maxWidth: .infinity , alignment:  .leading)
                .padding(.leading ,20)
                .padding(.top,30)
                .foregroundColor(Color.blue)
            
            HStack{
                Text("Color")
                    .font(.system(size: 30 ,weight: .bold,design: .serif))
                Spacer()
                Text("Quantity")
                    .font(.system(size: 30 ,weight: .bold,design: .serif))
                    .padding(.trailing)
           
            }
            .padding(.leading,20)
            .padding(.top,20)
            
            HStack(spacing: 20){
                Circle()
                    .fill(.blue)
                    .frame(width: 30, height: 30, alignment: .center)
                    .overlay (
                      Circle()
                        .stroke(Color.blue , lineWidth: isColor1Selected ? 3 : 0)
                        .frame(width: 40, height: 40, alignment: .center)
                    )
                    .onTapGesture {
                        withAnimation {
                            isColor1Selected = true
                            isColor2Selected = false
                            isColor3Selected = false
                            isColor4Selected = false
                        }
                       

                    }
                Circle()
                    .fill(.gray)
                    .frame(width: 30, height: 30, alignment: .center)
                    .overlay (
                      Circle()
                        .stroke(Color.gray , lineWidth: isColor2Selected ? 3 : 0 )
                        .frame(width: 40, height: 40, alignment: .center)
                    )
                    .onTapGesture {
                        withAnimation {
                            isColor1Selected = false
                            isColor2Selected = true
                            isColor3Selected = false
                            isColor4Selected = false
                        }
                       

                    }
                Circle()
                    .fill(.green)
                    .frame(width: 30, height: 30, alignment: .center)
                    .overlay (
                      Circle()
                        .stroke(Color.green , lineWidth: isColor3Selected ? 3 : 0)
                        .frame(width: 40, height: 40, alignment: .center)
                    )
                    .onTapGesture {
                        withAnimation {
                            isColor1Selected = false
                            isColor2Selected = false
                            isColor3Selected = true
                            isColor4Selected = false
                        }
                       

                    }
                Circle()
                    .fill(.brown)
                    .frame(width: 30, height: 30, alignment: .center)
                    .overlay (
                      Circle()
                        .stroke(Color.brown , lineWidth: isColor4Selected ? 3 : 0)
                        .frame(width: 40, height: 40, alignment: .center)
                    )
                    .onTapGesture {
                        withAnimation {
                            isColor1Selected = false
                            isColor2Selected = false
                            isColor3Selected = false
                            isColor4Selected = true
                        }
                       

                    }
                Button {
                    withAnimation {
                        count = count - 1
                    }
                    

                } label: {
                    Text("-")
                        .font(.system(size: 30,weight: .bold,design: .default))
                        .foregroundColor(Color.black)
                        .frame(width: 50,height: 50,alignment: .center)
                        .background(Color.gray.opacity(0.7))
                        .cornerRadius(14)
                }
                Text("\(count)")
                    .font(.system(size: 25,weight: .bold,design: .default))
                    .frame(width: 30, height: 30, alignment: .center)
                    //.padding(.bottom,30)

                
                Button {
                    withAnimation {
                        count = count + 1
                    }
                   
                    
                } label: {
                    Text("+")
                        .font(.system(size: 30,weight: .bold,design: .default))
                        .foregroundColor(Color.black)
                        .frame(width: 50,height: 50,alignment: .center)
                        .background(Color.gray.opacity(0.7))
                        .cornerRadius(14)
                    
                }.padding(.trailing)
               
            }
            .padding(.leading,20)
            .padding(.top,20)
            
           
            
           
            Text(chair.description)
                .font(.system(size: 18,weight: .medium,design: .serif))
                .padding(.horizontal)
                .padding(.top,30)
            
            Spacer()
            Button {
                vm.addCartItem(chair: chair)
            } label: {
                Text("Add to cart")
                    .foregroundColor(Color.white)
                    .font(.system(size: 20,weight: .bold,design: .serif))
                    .frame(width: UIScreen.main.bounds.width, height: 50, alignment: .center)
                    .background(Color.blue)
                    .cornerRadius(20)
                    .padding()
            }
            .padding(.bottom ,50)

           
              
                
              //  .padding()
                
               // .padding(.bottom)
               
        }.edgesIgnoringSafeArea(.bottom )
            .padding(.horizontal ,5)
        
    }
}
/*
 struct ItemDetailView_Previews: PreviewProvider {
     static var previews: some View {
         ItemDetailView()
             .environmentObject(ChairViewModel())
     }
 }
 */

