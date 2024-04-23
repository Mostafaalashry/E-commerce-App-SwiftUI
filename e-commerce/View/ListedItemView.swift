//
//  ListedItemView.swift
//  e-commerce
//
//  Created by mostafa on 07/04/2024.
//

import SwiftUI

struct ListedItemView: View {
    @State var indexer:Int = 0
    @EnvironmentObject var vm : ChairViewModel
    @State var timer  = Timer.TimerPublisher(interval: 2, runLoop: .main, mode: .common).autoconnect()
    
    var body: some View {
        NavigationView{
            ZStack{
                HStack{
                    
                    Color("firstBackground")
                    
                    
                }
                ScrollView(.vertical ,showsIndicators: false ) {
                    VStack(spacing: 0){
                        headerView
                        
                        trendingView
                        
                        comingSoon
                            .padding(.bottom ,90)
                        
                    }
                    
                }
            }.edgesIgnoringSafeArea(.all)
        }
    }
    struct ListedItemView_Previews: PreviewProvider {
        static var previews: some View {
            ListedItemView()
        }
    }
}

extension ListedItemView{
    var headerView :some View{
        TabView(selection: $indexer) {
            
          
                ItemHeaderView( chair: vm.chairs[indexer])
                    .tag(0)
            
           
                ItemHeaderView( chair: vm.chairs[indexer])
                    .tag(1)
            
           
                ItemHeaderView( chair: vm.chairs[indexer])
                    .tag(2)
            
         
                ItemHeaderView( chair: vm.chairs[indexer])
                    .tag(3)
            
         
                ItemHeaderView( chair: vm.chairs[indexer])
                    .tag(4)
            
        }
        .tabViewStyle(PageTabViewStyle())
        .frame(height: UIScreen.main.bounds.height/2.7 , alignment: .center)
        .onReceive(timer) { timerCount in
            withAnimation(.easeInOut(duration: 1.0)) {
                indexer  = indexer==5 ? 0 : indexer+1
            }
        }
    }
}

extension ListedItemView{
    var trendingView :some View{
        VStack{
            Text("trending")
                .font(.system(size: 24, weight: .bold , design: .serif))
                .frame(maxWidth: .infinity , alignment:  .leading)
                .padding(.leading)
            
            ScrollView(.horizontal){
                
                HStack{
                    
                    
                    ForEach(vm.chairs) { chair in
                        if chair.stateOnMarket == "trending" {
                            
                            NavigationLink {
                                ItemDetailView(chair: chair)
                            } label: {
                                ItemCardView(chair: chair)
                                    .padding()
                            }

                            
                        }
                        
                    }
                    
                }
            }
          

        }
    }
}

extension ListedItemView{
    var comingSoon :some View{
        VStack{
            Text("comming soon")
                .font(.system(size: 24, weight: .bold , design: .serif))
                .frame(maxWidth: .infinity , alignment:  .leading)
                .padding(.leading)
            
            ScrollView(.horizontal){
                
                HStack{
                    
                    
                    ForEach(vm.chairs) { chair in
                        if chair.stateOnMarket == "comming soon" {
                            NavigationLink {
                                ItemDetailView(chair: chair)
                            } label: {
                                ItemCardView(chair: chair)
                                    .padding()
                            }
                                
                        }
                        
                    }
                    
                }
            }
        }
        
    }
}
