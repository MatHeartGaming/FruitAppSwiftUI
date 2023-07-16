//
//  FruitNutrientsView.swift
//  FruitsApp
//
//  Created by Matteo Buompastore on 16/07/23.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    //MARK: - PROPERTIES
    var fruit : Fruit
    let nutrients = ["Energy", "sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    //MARK: - BODY
    var body: some View {
        GroupBox {
            
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { nutrientIndex in
                    
                    Divider()
                        .padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[nutrientIndex])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[nutrientIndex])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
            
        }//: GROUPBOX
    }
}



//MARK: - PREVIEW
struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData.first!)
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
