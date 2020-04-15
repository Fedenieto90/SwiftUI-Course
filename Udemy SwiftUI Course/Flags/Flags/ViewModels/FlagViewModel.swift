//
//  FlagViewModel.swift
//  Flags
//
//  Created by Federico Nieto on 13/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class FlagViewModel: ObservableObject {
    
    let flags = ["🇭🇺", "🇵🇾", "🇸🇳", "🇸🇽", "🇳🇴", "🇷🇼"]
    @Published var country = ""
    @Published var selectedFlag = ""
    
}
