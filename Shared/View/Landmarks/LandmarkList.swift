//
//  LandmarkList.swift
//  SwiftUITest
//
//  Created by TAEHYUNG CHOI on 13/01/2021.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmark.filter({landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        })
    }
    var body: some View {
        NavigationView{
            List{
                Toggle(isOn: $showFavoritesOnly){
                    Text("Favorites Only")
                }
                ForEach(filteredLandmarks){ index in
                NavigationLink(
                    destination: LandmarkDetail(landmark: index),
                    label: {
                        LandmarkRow(landmark: index)
                    })
                }
            }.navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
