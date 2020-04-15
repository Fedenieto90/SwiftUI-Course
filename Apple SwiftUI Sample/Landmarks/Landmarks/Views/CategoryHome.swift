//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Federico Nieto on 15/03/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
   
    init() {
        // To remove only extra separators below the list:
        UITableView.appearance().tableFooterView = UIView()
        // To remove all separators including the actual ones:
        UITableView.appearance().separatorStyle = .none
    }
    
    var categories: [String:[Landmark]] {
        Dictionary(grouping: landmarkData, by: { $0.category.rawValue })
    }
    var featured: [Landmark] {
        landmarkData.filter { (landmark) -> Bool in
            landmark.isFeatured
        }
    }
    var body: some View {
        NavigationView {
            List {
                FeaturedLandmarks(landmarks: featured)
                    .clipped()
                    .scaledToFill()
                    .listRowInsets(EdgeInsets())
                ForEach(categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: self.categories[key] ?? [])
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationBarTitle("Featured")
        }

    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
