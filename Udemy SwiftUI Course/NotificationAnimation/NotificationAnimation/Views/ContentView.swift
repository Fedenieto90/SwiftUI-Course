//
//  ContentView.swift
//  NotificationAnimation
//
//  Created by Federico Nieto on 14/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var showNotification: Bool = false
    
    var body: some View {
        VStack {
            NotificationView()
                .offset(x: 0, y: showNotification ? -UIScreen.main.bounds.height/3 : -UIScreen.main.bounds.height)
                .animation(.interpolatingSpring(mass: 1.0, stiffness: 100.0, damping: 7.0, initialVelocity: 0.0))
            Button("Press Me") {
                self.showNotification.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
