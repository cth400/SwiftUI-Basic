//
//  CategoryHome.swift
//  SwiftUITest (iOS)
//
//  Created by TAEHYUNG CHOI on 14/01/2021.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelData : ModelData
    @State private var showingProfile = false
    
    var body: some View {
        NavigationView{
            List {
                
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                
                ForEach(modelData.category.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.category[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
        
            .listStyle(InsetListStyle())
                .navigationTitle("Featured")
            .toolbar {
                Button(action: {showingProfile.toggle()}){
                    Image(systemName: "person.crop.circle")
                        .accessibilityLabel("User Profile")
                }
            }
            .sheet(isPresented: $showingProfile){
                ProfileHost()
                    .environmentObject(modelData)
            }
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
