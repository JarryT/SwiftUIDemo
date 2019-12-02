//
//  Landmark.swift
//  SwiftyUI01
//
//  Created by 汤军 on 2019/10/15.
//  Copyright © 2019 JarryTang. All rights reserved.
//

import UIKit
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var state: String
    var park: String
    var category: Category
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    var isFavorite: Bool

    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
        latitude: coordinates.latitude,
        longitude: coordinates.longitude)
    }

    enum Category: String, Codable, CaseIterable, Hashable {
        case featured = "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
}

extension Landmark {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
