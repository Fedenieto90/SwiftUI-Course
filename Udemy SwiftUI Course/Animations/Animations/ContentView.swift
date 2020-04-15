//
//  ContentView.swift
//  Animations
//
//  Created by Federico Nieto on 14/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var showDetail: Bool = false
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("🌎")
                    .font(.custom("Arial", size: 100))
                    .scaleEffect(showDetail ? 2 : 1)
                    .rotationEffect(.degrees(showDetail ? 360.0 : 0.0))
                    .animation(.interpolatingSpring(mass: 1.0, stiffness: 100.0, damping: 7.0, initialVelocity: 0.0))
                    .shadow(radius: 10)
                Spacer()
                Button("Press Me") {
                    self.showDetail.toggle()
                    
                }.padding()
                    .frame(width: UIScreen.main.bounds.width - 20, height: 80)
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(10)
                    .shadow(radius: 10)
            }
            .navigationBarTitle("Animation")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
