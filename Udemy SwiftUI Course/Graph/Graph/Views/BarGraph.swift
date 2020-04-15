//
//  BarGraph.swift
//  Graph
//
//  Created by Federico Nieto on 13/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import SwiftUI

struct BarGraph: View {
    
    let reports = Report.all()
    
    var body: some View {
        NavigationView {
            HStack(alignment: .lastTextBaseline) {
                ForEach(reports, id: \.year) { report in
                    BarView(report: report)
                }
            }
        .navigationBarTitle("Revenues")
        }
        
    }
}

struct BarGraph_Previews: PreviewProvider {
    static var previews: some View {
        BarGraph()
    }
}

struct BarView: View {
    
    let colors: [Color] = [.red, .yellow, .blue, .green, .black]
    let report: Report
    @State private var showGraph = false
    @State private var modalShown = false

    var body: some View {
        let yValue = (report.revenue / 500) * 20
        return NavigationLink(destination: BarGraphDetail(report: report)) {
            VStack {
                Text(String(format: "$%.f" ,report.revenue))
                    .fontWeight(.semibold)
                Rectangle()
                    .frame(width: 100, height: self.showGraph ? CGFloat(yValue) : 0)
                    .foregroundColor(self.colors.randomElement())
                        .cornerRadius(15)
                        .shadow(radius: 10)
                Text(String(report.year))
                    .fontWeight(.medium)
                Text(report.desc)
                    .fontWeight(.bold)
                .onAppear() {
                    self.animateGraph()
                }
            }
        }
    }
    
    // Add Graph Animation
    
    private func animateGraph() {
        if !self.showGraph {
            withAnimation(.spring()) {
                self.showGraph.toggle()
            }
        }
       
    }
}
