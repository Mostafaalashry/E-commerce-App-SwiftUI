//
//  e_commerceApp.swift
//  e-commerce
//
//  Created by mostafa on 07/04/2024.
//

import SwiftUI

@main
struct e_commerceApp: App {
    @StateObject var vm = ChairViewModel()
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(vm)
        }
    }
}
