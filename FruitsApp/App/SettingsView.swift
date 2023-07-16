//
//  SettingsView.swift
//  FruitsApp
//
//  Created by Matteo Buompastore on 16/07/23.
//

import SwiftUI

struct SettingsView: View {
    
    //MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding = false
    
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    //MARK: - SECTION 1
                    GroupBox {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(10)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have colesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, and much more.")
                                .font(.footnote)
                        }
                    } label: {
                        SettingsLabelView(labelText: "FruitApp", labelImage: "info.circle")
                    }//: GroupBox

                    
                    //MARK: - SECTION 2
                    GroupBox {
                        Divider().padding(.vertical, 4)
                        Text("If you wish you can restart the app by toggle this switch. That way the app will restart the onboarding process and you will see the weclome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )

                        
                        
                    } label: {
                        SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    }

                    
                    
                    //MARK: - SECTION 3
                    GroupBox {
                        SettingsRowView(name: "Developer", content: "MatBuompy")
                        
                        SettingsRowView(name: "Designer", content: "MatBuompy")
                        
                        SettingsRowView(name: "Compatibility", content: "iOS 15+")
                        
                        SettingsRowView(name: "Compatibility", content: "iOS 15+")
                        
                        SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                        
                        SettingsRowView(name: "Linkedin", linkLabel: "Matteo Buompastore", linkDestination: "https://www.linkedin.com/in/matteo-buompastore-3b78921a0/")
                        
                        SettingsRowView(name: "Version", content: "1.0")
                        
                        SettingsRowView(name: "SwiftUI Version", content: "3.0")
                        
                    } label: {
                        SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    }//: GroupBox

                    
                }
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.large)
                .toolbar() {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            presentationMode.wrappedValue.dismiss()
                        } label: {
                            Image(systemName: "xmark")
                        }
                        .padding()

                    }
                }
            }//: SCROLL
        }//: NAVIGATION
        .padding()
    }
}


//MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .padding()
    }
}
