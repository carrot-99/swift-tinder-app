//
//  TinderAppApp.swift
//  TinderApp
//
//  Created by USER on 2023/02/25.
//

import SwiftUI

@main
struct TinderAppApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(CardViewModel())
        }
    }
}
