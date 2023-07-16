//
//  ContentView.swift
//  FruitsApp
//
//  Created by Matteo Buompastore on 15/07/23.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTIES
    let fruits : [Fruit] = fruitsData
    @State private var isShowingSettings = false
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink {
                        FruitDetailView(fruit: fruit)
                    } label: {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        isShowingSettings = true
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    }

                }
            }
            .sheet(isPresented: $isShowingSettings) {
                SettingsView()
            }
        }//: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.sizeThatFits)
    }
}
