//
//  UserData.swift
//  Landmarks
//
//  Created by Federico Nieto on 15/03/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import Foundation
import Combine

final class UserData: ObservableObject {
    
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
    
}
