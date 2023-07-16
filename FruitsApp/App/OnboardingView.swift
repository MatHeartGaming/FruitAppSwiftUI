//
//  OnboardingView.swift
//  FruitsApp
//
//  Created by Matteo Buompastore on 15/07/23.
//

import SwiftUI

struct OnboardingView: View {
    
    //MARK: - PROPERTIES
    let fruits : [Fruit] = fruitsData
    
    //MARK: - BODY
    var body: some View {
        TabView {
            ForEach(fruits, id: \.id) { fruit in
                FruitCardView(fruit: fruit)
                    .padding(8)
            }//: LOOP
        }//: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .previewLayout(.sizeThatFits)
    }
}
