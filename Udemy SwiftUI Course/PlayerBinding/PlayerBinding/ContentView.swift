//
//  ContentView.swift
//  PlayerBinding
//
//  Created by Federico Nieto on 09/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let episode = Episode(name: "Episode Name", desc: "Description")
    
    @State var isPlaying = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text(episode.name)
                    .font(.title)
                    .foregroundColor(isPlaying ? .green : .black)
                Text(episode.desc)
                    .foregroundColor(.secondary)
                PlayButton(isPlaying: $isPlaying)
            }
            .navigationBarTitle("Podcast")
        }
    }
}

struct PlayButton: View {
    @Binding var isPlaying: Bool
    var body: some View {
        Button(action: {
            self.isPlaying.toggle()
        }) {
            Text(isPlaying ? "Stop" : "Play")
        }
        .padding(15)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
