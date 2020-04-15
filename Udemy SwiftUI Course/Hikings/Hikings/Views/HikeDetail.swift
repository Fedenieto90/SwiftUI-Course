//
//  HikeDetail.swift
//  Hikings
//
//  Created by Federico Nieto on 08/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import SwiftUI

struct HikeDetail: View {
    let hike: Hike
    var body: some View {
        VStack {
            Image(hike.imageUrl)
                .resizable()
                .frame(height: 400)
                .clipShape(Circle())
            Text(hike.name)
                .font(.largeTitle)
            Text(String(hike.miles))
                .font(.title)
        }.navigationBarTitle(Text(hike.name), displayMode: .inline)
    }
}

struct HikeDetail_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetail(hike: Hike.all().first!)
    }
}
