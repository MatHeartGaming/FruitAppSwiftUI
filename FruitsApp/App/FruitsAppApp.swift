//
//  FruitsAppApp.swift
//  FruitsApp
//
//  Created by Matteo Buompastore on 15/07/23.
//

import SwiftUI

@main
struct FruitsAppApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding : Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
