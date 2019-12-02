//
//  UserData.swift
//  SwiftyUI01
//
//  Created by 汤军 on 2019/10/15.
//  Copyright © 2019 JarryTang. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    //we give them the default value
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
