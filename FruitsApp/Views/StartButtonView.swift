//
//  StartButtonView.swift
//  FruitsApp
//
//  Created by Matteo Buompastore on 15/07/23.
//

import SwiftUI

struct StartButtonView: View {
    
    //MARK: PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding : Bool?
    
    //MARK: BODY
    var body: some View {
        Button {
            print("Exit the onboarding")
            isOnboarding = false
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule()
                .strokeBorder(.white, lineWidth: 1.25)
            )  
        }
        .tint(.accentColor)
        
    }
}

//MARK: PREVIEW
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
