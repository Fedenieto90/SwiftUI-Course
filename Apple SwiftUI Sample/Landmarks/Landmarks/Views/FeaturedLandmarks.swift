//
//  FeaturedLandmarks.swift
//  Landmarks
//
//  Created by Federico Nieto on 15/03/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import SwiftUI

struct FeaturedLandmarks: View {
    var landmarks: [Landmark]
    var body: some View {
        landmarks[0].image
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(height:200)
            .padding([.leading, .trailing], 20)
            .shadow(radius: 5)
            .cornerRadius(5)
    }
}

struct FeaturedLandmarks_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedLandmarks(landmarks: landmarkData)
    }
}
