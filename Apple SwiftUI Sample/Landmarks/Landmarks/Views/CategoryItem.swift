//
//  CategoryItem.swift
//  Landmarks
//
//  Created by Federico Nieto on 15/03/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark
    var body: some View {
        VStack {
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
                .shadow(radius: 5)
            Text(landmark.name)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(landmark: landmarkData[0])
    }
}
