//
//  Report.swift
//  Graph
//
//  Created by Federico Nieto on 13/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import Foundation

class Report {
    
    let year: Int
    let revenue: Double
    @UpperCase var desc: String
    
    init(year: Int, revenue: Double, desc: String) {
        self.year = year
        self.revenue = revenue
        self.desc = desc
    }
    
}

extension Report {
    
    static func all() -> [Report] {
        return [Report(year: 2015, revenue: 2000, desc: "q1"),
                Report(year: 2016, revenue: 3000, desc: "q2"),
                Report(year: 2017, revenue: 6000, desc: "q3")]
    }
    
}
