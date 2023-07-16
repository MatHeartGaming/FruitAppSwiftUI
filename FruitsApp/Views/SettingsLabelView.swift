//
//  SettingsLabelView.swift
//  FruitsApp
//
//  Created by Matteo Buompastore on 16/07/23.
//

import SwiftUI

struct SettingsLabelView: View {
    
    //MARK: - PROPERTIES
    var labelText : String
    var labelImage : String
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}


//MARK: - PREVIEW
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fruit", labelImage: "xmark")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
