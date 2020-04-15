//
//  ContentView.swift
//  Flags
//
//  Created by Federico Nieto on 13/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var flagVM = FlagViewModel()
    @State var showModal : Bool = false
    
    var body: some View {
        NavigationView {
            List {
                Text(self.flagVM.country+" "+self.flagVM.selectedFlag)
                ForEach(0..<self.flagVM.flags.count) { index in
                    HStack {
                        Text(self.flagVM.flags[index])
                            .font(.custom("Arial", size: 100))
                        Text("Flag \(index+1)")
                    }.onTapGesture {
                        self.showModal.toggle()
                        self.flagVM.selectedFlag = self.flagVM.flags[index]
                    }
                }
            }.sheet(isPresented: self.$showModal) {
                FlagDetail(flag: self.flagVM.selectedFlag, country: self.$flagVM.country, showModal: self.$showModal)
            }
            .navigationBarTitle("Flags")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
