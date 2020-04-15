//
//  BarGraphDetail.swift
//  Graph
//
//  Created by Federico Nieto on 13/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import SwiftUI

struct BarGraphDetail: View {
    let report: Report
    var body: some View {
        VStack(alignment: .leading) {
            Text("Year")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text(String(report.year))
                .padding(.bottom, 40)
            Text("Revenue")
                .font(.title)
                .fontWeight(.bold)
            Text(String(format: "%.f", report.revenue))
                .padding(.bottom, 40)
            Text("Description")
                .font(.body)
                .fontWeight(.bold)
            Text(report.desc)
        }
        .navigationBarTitle("Revenue Detail")
    }
}

struct BarGraphDetail_Previews: PreviewProvider {
    static var previews: some View {
        BarGraphDetail(report: Report(year: 2015, revenue: 4000, desc: "q1"))
    }
}
