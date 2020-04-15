//
//  ContentView.swift
//  Hikings
//
//  Created by Federico Nieto on 08/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var hikes = Hike.all()
    
    var body: some View {
        NavigationView {
            List(hikes, id: \.name) { hike in
                NavigationLink(destination: HikeDetail(hike: hike)) {
                    HikeCell(hike: hike)
                }
            }
            .navigationBarTitle("Hikings")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HikeCell: View {
    let hike: Hike
    var body: some View {
        HStack {
            Image(hike.imageUrl)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(20)
            VStack(alignment: .leading) {
                Text(hike.name)
                Text(String(hike.miles))
            }
        }
    }
}
