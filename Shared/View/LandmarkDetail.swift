//
//  LandmarkDetail.swift
//  SwiftUITest
//
//  Created by TAEHYUNG CHOI on 13/01/2021.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark: Landmark
    
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate2D)
                       .ignoresSafeArea(edges: .top)
                       .frame(height: 300)

            CircleImage(image: landmark.image)
                       .offset(y: -130)
                       .padding(.bottom, -130)

                   VStack(alignment: .leading) {
                    Text(landmark.name)
                           .font(.title)
                           .foregroundColor(.primary)

                       HStack {
                        Text(landmark.park)
                           Spacer()
                        Text(landmark.state)
                       }
                       .font(.subheadline)
                       .foregroundColor(.secondary)

                       Divider()

                    Text("About \(landmark.name)")
                           .font(.title2)
                    Text(landmark.description)
                   }
                   .padding()

               }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmark[0])
    }
}
