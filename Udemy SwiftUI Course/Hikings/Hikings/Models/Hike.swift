//
//  Hike.swift
//  Hikings
//
//  Created by Federico Nieto on 08/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import Foundation

struct Hike {
    let name: String
    let imageUrl: String
    let miles: Double
}

extension Hike {
    
    static func all() -> [Hike] {
        return [Hike(name: "Bariloche", imageUrl: "hike1", miles: 10.53),
                Hike(name: "San Martin De Los Andes", imageUrl: "hike2", miles: 20.20),
                Hike(name: "Villa Langostura", imageUrl: "hike3", miles: 5.22)]
    }
    
}
