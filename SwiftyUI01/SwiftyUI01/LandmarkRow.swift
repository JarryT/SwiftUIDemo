//
//  LandmarkRow.swift
//  SwiftyUI01
//
//  Created by 汤军 on 2019/10/15.
//  Copyright © 2019 JarryTang. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {

    var landmark: Landmark

    var body: some View {
        HStack {
            landmark
                .image
                .resizable()
                .frame(width: 50, height: 50)
            Text(verbatim: landmark.name)
            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                .foregroundColor(.yellow)
                .imageScale(.medium)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
            }.previewLayout(.fixed(width: 300, height: 70))

    }
}
