//
//  BadgeBackground.swift
//  SwiftyUI01
//
//  Created by 汤军 on 2019/10/17.
//  Copyright © 2019 JarryTang. All rights reserved.
//

import SwiftUI

struct BadgeBackground: View {
    var body: some View {

        /// A container view that defines its content as a function of its own size and coordinate space.
        GeometryReader { geometry in

            Path { path in
                var width: CGFloat = min(geometry.size.width, geometry.size.height)
                let height = width
                let xScale: CGFloat = 0.832
                let xOffset = (width * (1.0 - xScale)) / 2.0
                width *= xScale

                //Begins a new subpath at the specified point.
                path.move(
                    to: CGPoint(
                        x: xOffset + width * 0.95,
                        y: height * (0.20 + HexagonParameters.adjustment)
                    )
                )

                HexagonParameters.points.forEach { (segment) in
                    //Adds a quadratic Bézier curve to the path, with the specified end point and control point.
                    path.addLine(
                        to: .init(
                            x: xOffset + width * segment.userWidth.0 * segment.xFactors.0,
                            y: height * segment.userHeight.0 * segment.yFactors.0)
                    )
                    //Adds a quadratic Bézier curve to the path, with the specified end point and control point.
                    path.addQuadCurve(
                        to: .init(
                            x: xOffset + width * segment.userWidth.1 * segment.xFactors.1,
                            y: height * segment.userHeight.1 * segment.yFactors.1
                        ), control: .init(
                            x: xOffset + width * segment.userWidth.2 * segment.xFactors.2,
                            y: height * segment.userHeight.2 * segment.yFactors.2)
                    )
                }
            }
            //Fills this shape with a color or gradient.
            .fill(LinearGradient(
                gradient: .init(colors: [Self.gradientStart, Self.gradientEnd]),
                startPoint: .init(x: 0.5, y: 0),
                endPoint: .init(x: 0.5, y: 0.6)
            ))
            //Constrains the view’s dimensions to the specified aspect ratio.
            .aspectRatio(1, contentMode: .fit)
        }
    }

    static let gradientStart = Color(red: 239.0 / 255, green: 120.0 / 255, blue: 221.0 / 255)
    static let gradientEnd = Color(red: 239.0 / 255, green: 172.0 / 255, blue: 120.0 / 255)
}

struct BadgeBackground_Previews: PreviewProvider {
    static var previews: some View {
        BadgeBackground()
    }
}
