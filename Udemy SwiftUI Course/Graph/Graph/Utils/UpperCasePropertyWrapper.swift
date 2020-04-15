//
//  UpperCasePropertyWrapper.swift
//  Graph
//
//  Created by Federico Nieto on 13/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import Foundation

@propertyWrapper
class UpperCase {
    
    private(set) var value: String = ""
    var wrappedValue: String {
        get { value }
        set { value = newValue.uppercased() }
    }
    
}
