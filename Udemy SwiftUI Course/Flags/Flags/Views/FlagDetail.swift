//
//  FlagDetail.swift
//  Flags
//
//  Created by Federico Nieto on 13/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import SwiftUI

struct FlagDetail: View {
    
    var flag: String
    @Binding var country: String
    @Binding var showModal: Bool
    
    var body: some View {
        VStack {
            Text(flag)
                .font(.custom("Arial", size: 100))
            TextField("Enter country name", text: $country)
                .padding()
                .fixedSize()
            Button("Submit") {
                self.showModal.toggle()
            }
        }
    }
}

struct FlagDetail_Previews: PreviewProvider {
    static var previews: some View {
        FlagDetail(flag: "🇲🇨", country: .constant("Test"), showModal: .constant(false))
    }
}
