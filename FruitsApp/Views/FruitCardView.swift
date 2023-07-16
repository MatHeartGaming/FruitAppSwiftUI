//
//  FruitCardView.swift
//  FruitsApp
//
//  Created by Matteo Buompastore on 15/07/23.
//

import SwiftUI

struct FruitCardView: View {
    
    //MARK: - PROPERTIES
    @State private var isAnimating = false
    
    var fruit : Fruit
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                
                //Fruit Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1 : 0.6)
                
                //Fruit Title
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: .black.opacity(0.15), radius: 2, x: 2, y: 2)
                
                //Fruit Headline
                Text(fruit.description)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480, maxHeight: 160)
                
                //Button
                StartButtonView()
                
                
            }//: VSTACK
        }//: ZSTACK
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .background(
            LinearGradient(colors: fruit.gradientColors,
                           startPoint: .top, endPoint: .bottom)
        )
        .cornerRadius(20)
    }
}

//MARK: - PREVIEW
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[2])
            .previewLayout(.sizeThatFits)
    }
}
