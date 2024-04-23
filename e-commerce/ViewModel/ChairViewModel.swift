//
//  ChairViewModel.swift
//  e-commerce
//
//  Created by mostafa on 07/04/2024.
//

import Foundation
import SwiftUI

class ChairViewModel:ObservableObject{
    
    @Published  var chairs = data.chairs
    
    @Published  var cartChairsItems :[chairModel] = []
   // var index = -1
    func addCartItem(chair:chairModel){
        cartChairsItems.append(chair)
    }
    
    func deleeteCartItem(chair:chairModel){
        var index  = 0
            for chairr in cartChairsItems {
                if chairr.id == chair.id {
                    cartChairsItems.remove(at: index)
                    return // Exit the function after removing the item
                }
                index = index + 1
            }
        }
        
    
}
