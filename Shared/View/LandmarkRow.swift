//
//  LandmarkRow.swift
//  SwiftUITest
//
//  Created by TAEHYUNG CHOI on 13/01/2021.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landmark : Landmark
    
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmark[0])
            LandmarkRow(landmark: landmark[1])
        }.previewLayout(.fixed(width: 300, height: 70))
    }
}
