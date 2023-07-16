//
//  SettingsRowView.swift
//  FruitsApp
//
//  Created by Matteo Buompastore on 16/07/23.
//

import SwiftUI

struct SettingsRowView: View {
    
    //MARK: - PROPERTIES
    var name : String
    var content : String? = nil
    var linkLabel : String? = nil
    var linkDestination : String? = nil
    
    //MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if(linkLabel != nil && linkDestination != nil) {
                    Link(destination: URL(string: linkDestination!)!) {
                        HStack {
                            Text(linkLabel!)
                            Image(systemName: "arrow.up.right.square")
                                .foregroundColor(.pink)
                        }
                    }
                } else {
                    EmptyView()
                }
            }
        }//: HSTACK
    }
}


//MARK: - PREVIEW
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Dev", content: "Matteo")
            .previewLayout(.sizeThatFits)
            .padding()
        
        SettingsRowView(name: "Website", linkLabel: "Credo.com", linkDestination: "https://credo.academy")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
