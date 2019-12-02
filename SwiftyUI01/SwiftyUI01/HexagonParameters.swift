//
//  HexagonParameters.swift
//  SwiftyUI01
//
//  Created by 汤军 on 2019/10/17.
//  Copyright © 2019 JarryTang. All rights reserved.
//

import UIKit

/// Abstract: Size, position, and other information used to draw a badge.
class HexagonParameters: NSObject {

    struct Segment {
        let userWidth: (CGFloat, CGFloat, CGFloat)
        let xFactors: (CGFloat, CGFloat, CGFloat)
        let userHeight: (CGFloat, CGFloat, CGFloat)
        let yFactors: (CGFloat, CGFloat, CGFloat)
    }

    static var adjustment: CGFloat = 0.085

    static let points = [
        Segment(userWidth: (1.00, 1.00, 1.00),
                xFactors: (0.60, 0.40, 0.50),
                userHeight: (1.00, 1.00, 0.00),
                yFactors: (0.05, 0.05, 0.00)
        ),
        Segment(userWidth: (1.00, 1.00, 0.00),
                xFactors: (0.05, 0.00, 0.00),
                userHeight: (1.00, 1.00, 1.00),
                yFactors: (0.20 + adjustment, 0.30 + adjustment, 0.25 + adjustment)
        ),
        Segment(userWidth: (1.00, 1.00, 0.00),
                xFactors: (0.00, 0.05, 0.00),
                userHeight: (1.00, 1.00, 1.00),
                yFactors: (0.70 - adjustment, 0.80 - adjustment, 0.75 - adjustment)
        ),
        Segment(userWidth: (1.00, 1.00, 1.00),
                xFactors: (0.40, 0.60, 0.50),
                userHeight: (1.00, 1.00, 1.00),
                yFactors: (0.95, 0.95, 1.00)
        ),
        Segment(userWidth: (1.00, 1.00, 1.00),
                xFactors: (0.95, 1.00, 1.00),
                userHeight: (1.00, 1.00, 1.00),
                yFactors: (0.80 - adjustment, 0.70 - adjustment, 0.75 - adjustment)
        ),
        Segment(userWidth: (1.00, 1.00, 1.00),
                xFactors: (1.00, 0.95, 1.00),
                userHeight: (1.00, 1.00, 1.00),
                yFactors: (0.30 + adjustment, 0.20 + adjustment, 0.25 + adjustment)
        ),
    ]
}
