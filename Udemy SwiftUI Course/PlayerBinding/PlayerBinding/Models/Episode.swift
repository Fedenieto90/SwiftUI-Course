//
//  Episode.swift
//  PlayerBinding
//
//  Created by Federico Nieto on 09/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import Foundation

struct Episode: Identifiable {
    var id = UUID()
    let name: String
    let desc: String
}
