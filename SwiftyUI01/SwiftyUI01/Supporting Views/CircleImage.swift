//
//  CircleImage.swift
//  SwiftyUI01
//
//  Created by 汤军 on 2019/10/15.
//  Copyright © 2019 JarryTang. All rights reserved.
//

import SwiftUI

struct CircleImage: View {

    var image: Image

    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
