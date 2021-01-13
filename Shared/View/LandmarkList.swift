//
//  LandmarkList.swift
//  SwiftUITest
//
//  Created by TAEHYUNG CHOI on 13/01/2021.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView{
            List(landmark, id: \.id){ index in
                NavigationLink(
                    destination: LandmarkDetail(landmark: index),
                    label: {
                        LandmarkRow(landmark: index)
                    })
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
