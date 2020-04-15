//
//  ContentView.swift
//  ObservableSettings
//
//  Created by Federico Nieto on 09/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var settings = UserSettings()
    
    var body: some View {
        VStack {
            Text(String(settings.score))
                .font(.largeTitle)
            Button("Update Score") {
                self.settings.score += 1
            }
            .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
